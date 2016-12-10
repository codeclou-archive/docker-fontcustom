# docker-fontcustom

Docker Image to work with [fontcustom](https://github.com/FontCustom/fontcustom)

## Usage

If your svgs reside inside `myfont/*.svg` you can create an icon font with:

```
cd myfont
docker run --tty --volume $(pwd)/:/fonts/ codeclou/docker-fontcustom:latest fontcustom help #or any other command
```

### License

  * Dockerfile and Image is provided under [MIT License](https://github.com/codeclou/docker-fontcustom/blob/master/LICENSE.md)
