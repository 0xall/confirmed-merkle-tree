import { expect } from "chai";
import { CMTUtils } from "../typechain-types/CMTUtils";
import { ethers } from "hardhat";
describe("CMTUtils", () => {
  let contract: CMTUtils;

  before(async () => {
    const CMTUtils = await ethers.getContractFactory(
      "CMTUtils"
    );

    contract = await CMTUtils.deploy();
  });

  const hashPair = (first: string, second: string) =>
    ethers.utils.keccak256(
      ethers.utils.hexConcat([
        ethers.utils.hexZeroPad(first, 32),
        ethers.utils.hexZeroPad(second, 32),
      ])
    );

  it("should return level of merkle tree", async () => {
    expect(await contract.level(2)).to.equal(1);
    expect(await contract.level(8)).to.equal(3);
    expect(await contract.level(9)).to.equal(4);
    expect(
      await contract.level(
        // 2^255
        BigInt(
          "57896044618658097711785492504343953926634992332820282019728792003956564819968"
        )
      )
    ).to.equal(255);
    expect(
      await contract.level(
        // 2^255 + 1
        BigInt(
          "57896044618658097711785492504343953926634992332820282019728792003956564819969"
        )
      )
    ).to.equal(256);

    expect(
      await contract.level(
        // 2^256 - 1
        BigInt(
          "115792089237316195423570985008687907853269984665640564039457584007913129639935"
        )
      )
    ).to.equal(256);
  });

  it("should return proper zero-level hash value", async () => {
    let previousHash = ethers.utils.hexZeroPad("0x00", 32);

    for (let i = 1; i <= 256; i++) {
      let nextHash = hashPair(previousHash, previousHash);
      expect(nextHash).to.equal(await contract.zero(i));
      previousHash = nextHash;
    }
  });
});
