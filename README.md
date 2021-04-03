# Supply chain & data auditing

This Project is quite important in Blockchain Udacity Course. this project focuses on supply chain project, that helps to track item in the suppy chain.
The DApp User Interface when running should look like...

![truffle test](images/Farm_Details.png)

![truffle test](images/Product_Details.png)

![truffle test](images/UI.png)


## Getting Started

In this write up I will share some important screenshots of the Deployment of my Contracts.

### Prerequisites

Please make sure you've already installed ganache-cli, Truffle and enabled MetaMask extension in your browser.

```
npm install -g
```

### Installing

A step by step series of examples that tell you have to get a development env running

Clone this repository:

```
git clone https://github.com/udacity/nd1309/tree/master/course-5/project-6
```

Change directory to ```project-6``` folder and install all requisite npm packages (as listed in ```package.json```):

```
cd project-6
npm install
```

Launch Ganache:

```
ganache-cli -m "spirit supply whale amount human item harsh scare congress discover talent hamster"
```

In a separate terminal window, Compile smart contracts:

```
truffle compile
```

Your terminal should look something like this:

![truffle test](images/truffle_compile.png)

This will create the smart contract artifacts in folder ```build\contracts```.

Migrate smart contracts to the locally running blockchain, ganache-cli:




In a separate terminal window, launch the DApp:

```
npm run dev
```
## Contract Address

# Farm Role : 0x9BA8161E315752121063AeBfD7D8966520a8343c
# Distributor Role : 0x0700D6C4a6416591Fd5e06362f2C873D0791b578
# Retailer Role : 0xAF66FCE3A0FD150aeF810869D9a1b4a08815d4ae
# Consumer Role : 0x603093411187c1637d0d27C33D57C9b9d0D8C8aF
# Supply Chain : 0xed78F283B4e801C67d286947d87213314599EcAf

## Built With

* [Ethereum](https://www.ethereum.org/) - Ethereum is a decentralized platform that runs smart contracts
* [IPFS](https://ipfs.io/) - IPFS is the Distributed Web | A peer-to-peer hypermedia protocol
to make the web faster, safer, and more open.
* [Truffle Framework](http://truffleframework.com/) - Truffle is the most popular development framework for Ethereum with a mission to make your life a whole lot easier.


## Authors

See also the list of [contributors](https://github.com/your/project/contributors.md) who participated in this project.

## Acknowledgments

* Solidity
* Ganache-cli
* Truffle
* IPFS
