pragma solidity >=0.4.24<0.8.0;

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'FarmerRole' to manage this role - add, remove, check
contract FarmerRole {
   using Roles for Roles.Role;

  // Define 2 events, one for Adding, and other for Removing
  event FarmerAdded(address indexed account);
  event FarmerDeleted(address indexed account);

  // Define a struct 'Farmers' by inheriting from 'Roles' library, struct Role
  Roles.Role private Farmers;

  // In the constructor make the address that deploys this contract the 1st Farmer
  constructor() public {
    	_addFarmer(msg.sender);
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyFarmer() {
  	require(isFarmer(msg.sender));
    
    _;
  }

  // Define a function 'isFarmer' to check this role
  function isFarmer(address account) public view returns (bool) {
  	return Farmers.has(account);
     }

  // Define a function 'addFarmer' that adds this role
  function addFarmer(address account) public onlyFarmer {
  	_addFarmer(account);
    }

  // Define a function 'renounceFarmer' to renounce this role
  function renounceFarmer() public {
  	_removeFarmer(msg.sender);
    }

  // Define an internal function '_addFarmer' to add this role, called by 'addFarmer'
  function _addFarmer(address account) internal {
  	Farmers.add(account);
  	emit FarmerAdded(account);
  }

  // Define an internal function '_removeFarmer' to remove this role, called by 'removeFarmer'
  function _removeFarmer(address account) internal {
  	Farmers.remove(account);
  	emit FarmerDeleted(account);
    }
}
