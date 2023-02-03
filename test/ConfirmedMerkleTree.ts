import { expect } from "chai";
import { CMTUtils } from "./../typechain-types/CMTUtils";
import { ConfirmedMerkleTree } from "../typechain-types/ConfirmedMerkleTree";
import { ethers } from "hardhat";

describe("ConfirmedMerkleTree", () => {
  let confirmedMerkleTreeUtils: CMTUtils;
  let contract: ConfirmedMerkleTree;

  // before testing, deploy a library for providing merkle tree utilities first.
  before(async () => {
    const CMTUtils = await ethers.getContractFactory("CMTUtils");

    confirmedMerkleTreeUtils = await CMTUtils.deploy();
    await confirmedMerkleTreeUtils.deployed();
  });

  // deploy merkle tree contract for every tests.
  beforeEach(async () => {
    await deployNewMerkleRootContract();
  });

  const deployNewMerkleRootContract = async () => {
    const ConfirmedMerkleTree = await ethers.getContractFactory("ConfirmedMerkleTree", {
      libraries: {
        CMTUtils: confirmedMerkleTreeUtils.address,
      },
    });

    contract = await ConfirmedMerkleTree.deploy();
    await contract.deployed();
  };

  const hashPair = (first: string, second: string) =>
    ethers.utils.keccak256(
      ethers.utils.hexConcat([ethers.utils.hexZeroPad(first, 32), ethers.utils.hexZeroPad(second, 32)])
    );

  const calculateMerkleRoot: (...elements: string[]) => string = (...elements: string[]) => {
    const zeroPaddingSize = 2 ** Math.ceil(Math.log2(elements.length));

    const paddedElements = [...elements, ...new Array(zeroPaddingSize - elements.length).fill("0x00")];

    return paddedElements.length == 1
      ? ethers.utils.hexZeroPad(paddedElements[0], 32)
      : hashPair(
          calculateMerkleRoot(...paddedElements.slice(0, paddedElements.length / 2)),
          calculateMerkleRoot(...paddedElements.slice(paddedElements.length / 2))
        );
  };

  const choiceRandom = (start: number, end: number) => {
    return Math.floor(Math.random() * (end - start) + start);
  };

  const randomArray = (size: number, start: number, end: number) => {
    return new Array(size).fill(null).map((v) => ethers.utils.hexValue(choiceRandom(start, end)));
  };

  it("should return merkle root for 2 data", async () => {
    await contract.append(ethers.utils.hexZeroPad("0x1", 32));
    await contract.append(ethers.utils.hexZeroPad("0x2", 32));

    expect(await contract.merkleRoot()).to.equal(calculateMerkleRoot("0x01", "0x02"));
  });

  it("should return merkle root for 3 data", async () => {
    await contract.append(ethers.utils.hexZeroPad("0x1", 32));
    await contract.append(ethers.utils.hexZeroPad("0x2", 32));
    await contract.append(ethers.utils.hexZeroPad("0x3", 32));

    expect(await contract.merkleRoot()).to.equal(calculateMerkleRoot("0x01", "0x02", "0x03"));
  });

  it("should success for 128-1024 data", async () => {
    const dataSize = choiceRandom(128, 1024);
    const merkleData = randomArray(dataSize, 0, 2 ** 32);

    // send multiple transactions at once.
    // it may not occur race condition because of tx nonce.
    await Promise.all(
      new Array(dataSize).fill(null).map((_, index) => contract.append(ethers.utils.hexZeroPad(merkleData[index], 32)))
    );

    expect(await contract.merkleRoot()).to.equal(calculateMerkleRoot(...merkleData));
  });
});
