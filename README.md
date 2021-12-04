# Chainlayer Node Config

## Testing

### Testing The Compose Stack

Invoke the stack: `docker compose up`

#### Lighthouse

```bash
curl -H "Host:dev.chainlayer.lighthouse" http://0.0.0.0:5052/eth/v1/config/spec
```

#### GETH

```bash
curl -X POST http://0.0.0.0:8545 \
    -H "Content-Type: application/json" \
    -H "Host: dev.chainlayer.geth" \
   --data '{"jsonrpc":"2.0", "method":"eth_getBalance", "params":["0x0000000000000000000000000000000000000000","latest"], "id":1}'
```

### Testing Ansible

54.212.169.139

```bash
ansible-playbook -i inventory.yml node.yml --private-key=~/m1.pem --user ubuntu
```
