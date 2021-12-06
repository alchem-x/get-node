# node

- `./get-node.sh`
- `./clean.sh`

## Use profile

```sh
GET_NODE_PATH=/path/to/node
if [ -f $GET_NODE_PATH/.profile ]; then
    . $GET_NODE_PATH/.profile
fi
```
