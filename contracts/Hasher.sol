pragma solidity >=0.8.0 <0.9.0;

contract Hasher {
   
    bytes32[] b32 ;
    bytes32[] b20 ;
    bytes32 sha;
    bytes32 keccak;
    bytes20 ripemd;
    
    function init() public {
        b32.push(0xae248190d583930687a52e2ea07d13c4ca2a6b1c9bf701f5b0417cf453020612);
        b32.push(0x8a200c44e26a6733105e427ade918dac551ff8a819eb1153a342d7526de2b6a0);
        b32.push(0x66b41bb613e41736d2b05cf92b7c16d39c627cabb313de6ee64906bbe2ddf9c5);
        b32.push(0x50eb0a1ffd67af1f574c00d0bcd550feb6fc27823914347aeb7c4238158a6651);
        b32.push(0xcdf3dcbb666d1cfcb3dc3f5a7f23f7cbbbfa16a96f6394a6b2c47c9c486551d4);
        b32.push(0x55b47cb55d0162d7fb25732e0d86d72d63c4aa03fb95a6f7c738417837c330a4);
        b32.push(0x9342642667474bbf02c743c315be8b9ff5f176009592dddf6a3ad29212ec2bf3);
        b32.push(0xd250e44f190f324d808025142524402d1f23d633355cb91286e3b166ced4b83b);
        b32.push(0x474445bab1da55f70a55b09535a509fe87ee40dd2ee54b5f5885f8c7aff2125a);
        b32.push(0x16358ac2cd6964fe628c910027b36426cfd3976492bec15a15c076a6feb2dbe7);

        b20.push(hex"ae248190d583930687a52e2ea07d13c4ca2a6b1c");
        b20.push(hex"8a200c44e26a6733105e427ade918dac551ff8a8");
        b20.push(hex"66b41bb613e41736d2b05cf92b7c16d39c627cab");
        b20.push(hex"50eb0a1ffd67af1f574c00d0bcd550feb6fc2782");
        b20.push(hex"cdf3dcbb666d1cfcb3dc3f5a7f23f7cbbbfa16a9");
        b20.push(hex"55b47cb55d0162d7fb25732e0d86d72d63c4aa03");
        b20.push(hex"9342642667474bbf02c743c315be8b9ff5f17600");
        b20.push(hex"d250e44f190f324d808025142524402d1f23d633");
        b20.push(hex"474445bab1da55f70a55b09535a509fe87ee40dd");
        b20.push(hex"16358ac2cd6964fe628c910027b36426cfd39764");

    }
    
    function sha256hashes(uint l) public {
        sha = 0xf21849f60ec732e135f2172e1226dbd7e6c5d86bc42c4b7544814cde2dffd6f5;
        for (uint i=0; i<l; i++) { 
            sha = sha256(bytes.concat(sha, b32[i]));
        }
    }

    function keccak256hashes(uint l) public {
        keccak = 0xf21849f60ec732e135f2172e1226dbd7e6c5d86bc42c4b7544814cde2dffd6f5;
        for (uint i=0; i<l; i++) { 
            keccak = keccak256(bytes.concat(keccak, b32[i]));
        }
    }

    function ripemd160hashes(uint l) public {
        ripemd = hex"f21849f60ec732e135f2172e1226dbd7e6c5d86b";
        for (uint i=0; i<l; i++) { 
            ripemd = ripemd160(bytes.concat(keccak, b20[i]));
        }
    }

}
