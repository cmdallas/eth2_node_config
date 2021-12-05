# Chainlayer Node Config

## Testing

### Testing

```bash
PROXY_IP=0.0.0.0

# Lighhouse
curl -H "Host:dev.chainlayer.lighthouse" http://${PROXY_IP}:5052/eth/v1/config/spec

# GETH
curl -X POST http://${PROXY_IP}:8545 \
    -H "Content-Type: application/json" \
    -H "Host: dev.chainlayer.geth" \
   --data '{"jsonrpc":"2.0", "method":"eth_getBalance", "params":["0x0000000000000000000000000000000000000000","latest"], "id":1}'
```
