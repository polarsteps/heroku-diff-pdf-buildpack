# heroku-diff-pdf-buildpack

For use in a multi buildpack:

1) Configure heroku for multiple build packs.

```
heroku config:set BUILDPACK_URL=https://github.com/polarsteps/heroku-diff-pdf-buildpack.git
```

2) Add pdftk to `.buildpacks` file

```
echo "https://github.com/polarsteps/heroku-diff-pdf-buildpack.git" >> .buildpacks
```


### Compilation/deploy notes

The minimum possible list of packages required to compile diff-pdf on Ubuntu are mentioned upstream.

Compile the binary using `heroku/heroku:22` docker image. Pull the `diff-pdf` binary and move it to the `binaries/` directory.

Once the app is deployed using the diff-pdf buildpack, there might still be some libraries that don't get installed. Find them out with `ldd /path/to/diff-pdf` on a running Heroku instance, and add these packages to the `PACKAGES` list.
