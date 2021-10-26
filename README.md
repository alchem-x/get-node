# node

## Fetch Node.js

```sh
./gradlew nodeSetup
```

## Update $PATH

```sh
export NODE_HOME="/opt/node/.gradle/nodejs/node-v${NODE_VERSION}-darwin-x64"
export PATH=$NODE_HOME/bin:$PATH
```

## Or just use node

```sh
./node
```