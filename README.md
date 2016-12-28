# docker-fontcustom

Docker Image to work with [fontcustom](https://github.com/FontCustom/fontcustom)

![](https://codeclou.github.io/doc/docker-warranty.svg?v5)

### Usage

If your svgs reside inside `myfont/*.svg` you can create an icon font with:

```
cd myfont
docker run 
    --tty 
    --volume $(pwd)/:/fonts/ 
codeclou/docker-fontcustom:latest fontcustom compile
```

----


### License

  * Dockerfile and Image is provided under [MIT License](https://github.com/codeclou/docker-fontcustom/blob/master/LICENSE.md)
