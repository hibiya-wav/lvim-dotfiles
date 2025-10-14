Installing locally

https://github.com/clangd/clangd/releases

download tar file which stores clangd

```bash
mkdir -p ~/tools/clangd
tar -xf ~/Downloads/clangd-linux-17.0.0.tar.xz -C ~/tools/clangd --strip-components=1

export PATH="$HOME/tools/clangd/bin:$PATH"

# testing

which clangd
clangd --version
```
---

getting clangd LSP to actually work

```bash
cmake . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

ln -s build/compile_commands.json compile_commands.json
```

voila. should work now that they are all linked to one another in how to access each other
and read their function calls.