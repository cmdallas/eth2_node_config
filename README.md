# Chainlayer Node Config

## Configuring Nodes

Target hosts are configure in `inventory/hosts.yml`

```bash
./bin/main.sh
```

## Testing

### Services

```bash
HOST=54.212.130.3

# Lighhouse
curl -kH "Host:dev.chainlayer.lighthouse" https://${HOST}:45052/eth/v1/config/spec

# GETH
curl -kX POST https://${HOST}:8545 \
    -H "Content-Type: application/json" \
    -H "Host: dev.chainlayer.geth" \
   --data '{"jsonrpc":"2.0", "method":"eth_getBalance", "params":["0x0000000000000000000000000000000000000000","latest"], "id":1}'
```

### Grafana

Navigate to `http://{HOST}:3000` in a web browser.

### PKI

#### Provisioning

```bash
openssl req \
    -newkey rsa:2048 -nodes -keyout cl.pem \
    -out cl.csr
```
