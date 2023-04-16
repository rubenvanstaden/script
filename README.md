Bash shell scripts used for Unix as an IDE.

- Add `/opt/sh` to `$PATH`.
- Install using `make install`
- Remove using `make clean`
- Reload shell `source ~/.zshrc`

Setup Zettelkasten environment.

```shell
export SCRIPT_PATH=/opt/sh

# Setup script environment
mkdir -p $SCRIPT_PATH

# Install specific script
ln -sf $PWD/zd $SCRIPT_PATH

# Clean scripts installed
rm -rf $SCRIPT_PATH
```

```shell
# Set journal path
export JOURNAL=$HOME/github.com/zk-journal

# Create daily note
zs.sh

# Create weekly note
zw.sh
```
