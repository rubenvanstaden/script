Bash shell scripts used for [Unix as an IDE](https://github.com/rubenvanstaden/zlib/blob/main/slipbox/202304061649.md).

```shell
> export SCRIPT=/opt/sh

# Setup script environment
> mkdir -p $SCRIPT

# Install specific script
> ln -sf $PWD/[SCRIPT_NAME] $SCRIPT

# Clean scripts installed
> rm -rf $SCRIPT
```
