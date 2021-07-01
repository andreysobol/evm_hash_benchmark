// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title Ballot
 * @dev Implements voting process along with vote delegation
 */
contract Ballot {
   
    bytes32[] b ;
    bytes32 sha;
    
    function init() public {
        b.push(0xae248190d583930687a52e2ea07d13c4ca2a6b1c9bf701f5b0417cf453020612);
        b.push(0x8a200c44e26a6733105e427ade918dac551ff8a819eb1153a342d7526de2b6a0);
        b.push(0x66b41bb613e41736d2b05cf92b7c16d39c627cabb313de6ee64906bbe2ddf9c5);
        b.push(0x50eb0a1ffd67af1f574c00d0bcd550feb6fc27823914347aeb7c4238158a6651);
        b.push(0xcdf3dcbb666d1cfcb3dc3f5a7f23f7cbbbfa16a96f6394a6b2c47c9c486551d4);
        b.push(0x55b47cb55d0162d7fb25732e0d86d72d63c4aa03fb95a6f7c738417837c330a4);
        b.push(0x9342642667474bbf02c743c315be8b9ff5f176009592dddf6a3ad29212ec2bf3);
        b.push(0xd250e44f190f324d808025142524402d1f23d633355cb91286e3b166ced4b83b);
        b.push(0x474445bab1da55f70a55b09535a509fe87ee40dd2ee54b5f5885f8c7aff2125a);
        b.push(0x16358ac2cd6964fe628c910027b36426cfd3976492bec15a15c076a6feb2dbe7);
    }
    
    function sha256hashes(uint l) public {
        sha = 0xf21849f60ec732e135f2172e1226dbd7e6c5d86bc42c4b7544814cde2dffd6f5;
        for (uint i=0; i<l; i++) { 
            sha = sha256(bytes.concat(sha, b[i]));
        }
    }

}
