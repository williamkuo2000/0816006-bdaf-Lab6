//SPDX-License-Identifier: ISC
pragma solidity ^0.8.0;

interface WPCInterface{
    function iDeclareBeingRich() external;
	function safeTransferFrom(address from, address to, uint256 tokenId) external;
}

interface BTInterface{
    function transfer(address to, uint256 amount) external;
}

contract getRich{
    address BankAddr; 
    address TokenAddr;
    address WPCAddr;
    address owner;

    constructor(address _bank, address _token, address _wpc){
        BankAddr = _bank;
        TokenAddr = _token;
        WPCAddr = _wpc;
        owner = msg.sender;
    }

    function executeWithMoney(uint256 amount) external{
		WPCInterface(WPCAddr).iDeclareBeingRich();   
		BTInterface(TokenAddr).transfer(BankAddr, amount); 
	}

	function transferWPC(uint256 nft_id) external{
		WPCInterface(WPCAddr).safeTransferFrom(address(this), owner, nft_id);
	}
}