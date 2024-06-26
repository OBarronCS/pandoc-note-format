# Pandoc Docker Container

```sh
docker build . -t pandoc-container

cat <<EOF > ~/.local/bin/pandoc
#!/bin/sh
docker run --rm -v $(pwd):/app -u $(id -u):$(id -g) pandoc-container $@
EOF

chmod +x ~/.local/bin/pandoc
```

# On Host
Install `pandoc`

Install the following Lua filter to support columns

```sh
git clone https://github.com/dialoa/columns.git ~/columns
```

For line wrapping to function correctly, code blocks seem to need to have specific header names, like `sh`. Specifying nothing doesn't allow the wrapping to work.

````
```sh
codehere
```
````

# dnf dependencies
```
sudo dnf install pandoc
sudo dnf install texlive
sudo dnf install 'tex(fvextra.sty)'
```
