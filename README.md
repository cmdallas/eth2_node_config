# Chainlayer Node Config

## Testing

### Services

```bash
HOST=0.0.0.0

# Lighhouse
curl -H "Host:dev.chainlayer.lighthouse" http://${HOST}:5052/eth/v1/config/spec

# GETH
curl -X POST http://${HOST}:8545 \
    -H "Content-Type: application/json" \
    -H "Host: dev.chainlayer.geth" \
   --data '{"jsonrpc":"2.0", "method":"eth_getBalance", "params":["0x0000000000000000000000000000000000000000","latest"], "id":1}'
```

### Grafana

Navigate to `http://{HOST}:3000` in a web browser.
