import hre from 'hardhat';

const main = async () => {
    const transactionsFactory = await hre.ethers.getContractFactory("Transactions");
    const transactionsContract = await transactionsFactory.deploy();

    await transactionsContract.deployed();

    console.log("Transactions Contract deployed to: ", transactionsContract.address);
}

const runMain = async () => {
    try {
        await main();
        process.exit(0);
    } catch (error) {
        console.log(error);
        process.exit(1);
    }
}

runMain();