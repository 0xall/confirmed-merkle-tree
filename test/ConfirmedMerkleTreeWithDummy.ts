import { expect } from "chai";
import { CMTUtils } from "../typechain-types/CMTUtils";
import { ConfirmedMerkleTreeWithDummy } from "../typechain-types/ConfirmedMerkleTreeWithDummy";
import { ethers } from "hardhat";
import { BigNumber } from "ethers";

const DUMMY_SIZE = process.env.DUMMY_SIZE ? 
  BigNumber.from(process.env.DUMMY_SIZE) : 
  BigNumber.from("0x01").shl(64).sub(BigNumber.from("0x01"));

describe("ConfirmedMerkleTreeWithDummy", () => {
  let confirmedMerkleTreeUtils: CMTUtils;
  let contract: ConfirmedMerkleTreeWithDummy;

  // before testing, deploy a library for providing merkle tree utilities first.
  before(async () => {
    const CMTUtils = await ethers.getContractFactory("CMTUtils");

    confirmedMerkleTreeUtils = await CMTUtils.deploy();
    await confirmedMerkleTreeUtils.deployed();
  });

  const deployNewMerkleRootContract = async (number: string) => {
    const ConfirmedMerkleTree = await ethers.getContractFactory("ConfirmedMerkleTreeWithDummy", {
      libraries: {
        CMTUtils: confirmedMerkleTreeUtils.address,
      },
    });

    contract = await ConfirmedMerkleTree.deploy(BigInt(number));
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

  it(`should return merkle root for ${DUMMY_SIZE} data`, async () => {
    await deployNewMerkleRootContract(DUMMY_SIZE.toHexString());

    for (let i = 0; i < 128; i++) {
      await contract.append(ethers.utils.hexZeroPad("0x1", 32));
      await contract.readTest();
    }
  });
});
