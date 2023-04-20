const hre = require("hardhat");

async function main() {

  const rich = await ethers.getContractFactory("getRich");
  const Rich = await rich.deploy("0xbe02727047fADd7fe434E093e001745B42C5F49B", 
                                 "0x7A81e50E0Ad45B31cC8E54A55095714F13a0c74e",
                                 "0x5e94B61BCa112683D18d5Ed27CebB16566E6d5ba");
  const RichAddress = Rich.address;
  await Rich.deployed();

  console.log("Way(address) to a rich life:", RichAddress);
}

main()
  .then(() => process.exit())
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

  ("0xbe02727047fADd7fe434E093e001745B42C5F49B", "0x7A81e50E0Ad45B31cC8E54A55095714F13a0c74e", "0x5e94B61BCa112683D18d5Ed27CebB16566E6d5ba")