This repo contains simple smart contracts which can be used as examples that smart contracts are working at a basic level and one that was used to test a specific issue we were having with evmos:

## `Storage`

The storage can be interacted with to set a number and retrieve it, sample interaction below

####  Deploying Contract

To deploy the contract, you will first need to set the priv key:
```
forge create Storage --private-key=$PRIV_KEY
```

which will give an output like this:
```
compiling...
no files changed, compilation skipped.
Deployer: 0xa2e2a047c2af7589294626c3d8220f56d49f01c4
Deployed to: 0xdcebe71fb4bad3f1d15451589700d08ce930b054
Transaction hash: 0x8bdeb6a753bff968a295638520c2d8dd2c1813adc8a93b722a13e91d1365197c
```

Grab the “Deployed to” address and save it to an env var
```
export CON_ADDR=0xdcebe71fb4bad3f1d15451589700d08ce930b054
```

### Retrieving the contract number

Get the initial storage value
```
cast call $CON_ADDR "retrieve()"
```

Returns
```
0x0000000000000000000000000000000000000000000000000000000000000000
```

### Setting the contract number

```
cast send $CON_ADDR "store(uint256)" 1 --private-key=$PRIV_KEY
```
Returns
```
blockHash            "0x33efb5b3baad6aa911aa8f89c5e82a799357d12665f619dec2560d66bd8f35dc"
blockNumber          "0x7"
contractAddress      null
cumulativeGasUsed    "0xa9fc"
effectiveGasPrice    "0xca47ef05"
gasUsed              "0xa9fc"
logs                 []
logsBloom            "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
root                 null
status               "0x1"
transactionHash      "0x163366540f6ef1928f61054c8565482625fa6aaa61ecb8d5420b04751cb74e94"
transactionIndex     "0x0"
type                 "0x2"
```

Get the updated storage value

```
$ cast call $CON_ADDR "retrieve()"
0x0000000000000000000000000000000000000000000000000000000000000001
```



