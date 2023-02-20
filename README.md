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