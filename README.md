# Benchmarks

Execution cost for every hashes (**sha256**, **keccak256**, **ripemd160**)

| count of hashes | sha256 | keccak256 | ripemd160 |
|---|---|---|---|
| 1 | 49859 | 48919 | 52516 |
| 2 | 53950 | 52051 | 57236 |
| 3 | 58041 | 55183 | 61956 |
| 4 | 62132 | 58315 | 66676 |
| 5 | 66224 | 61447 | 71396 |
| 6 | 70315 | 64579 | 76117 |
| 7 | 74407 | 67712 | 80837 |
| 8 | 78498 | 70844 | 85557 |
| 9 | 82590 | 73976 | 90278 |
| 10 | 86681 | 77109 | 94998 |

# Average execution cost

- ```sha256 = 4091 gas```
- ```keccak256 = 3132 gas ```
- ```ripemd160 = 4720 gas```

# Benchmark code 

```
function sha256hashes(uint l) public {
    sha = 0xf21849f60ec732e135f2172e1226dbd7e6c5d86bc42c4b7544814cde2dffd6f5;
    for (uint i=0; i<l; i++) { 
        sha = sha256(bytes.concat(sha, b32[i]));
    }
}
```

```
function keccak256hashes(uint l) public {
    keccak = 0xf21849f60ec732e135f2172e1226dbd7e6c5d86bc42c4b7544814cde2dffd6f5;
    for (uint i=0; i<l; i++) { 
        keccak = keccak256(bytes.concat(keccak, b32[i]));
    }
}
```

```
function ripemd160hashes(uint l) public {
    ripemd = hex"f21849f60ec732e135f2172e1226dbd7e6c5d86b";
    for (uint i=0; i<l; i++) { 
        ripemd = ripemd160(bytes.concat(keccak, b20[i]));
    }
}
```

# Smartcontract

[Hasher.sol](contracts/Hasher.sol)