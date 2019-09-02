# docker-fontcustom

## :bangbang: Deprecated and Discontinued :bangbang:


[![](https://codeclou.github.io/doc/badges/generated/docker-image-size-200.svg)](https://hub.docker.com/r/codeclou/docker-fontcustom/tags/) [![](https://codeclou.github.io/doc/badges/generated/docker-from-ubuntu-16.04.svg)](https://www.ubuntu.com/) [![](https://codeclou.github.io/doc/badges/generated/docker-run-as-non-root.svg)](https://docs.docker.com/engine/reference/builder/#/user)

Docker-Image to work with [fontcustom](https://github.com/FontCustom/fontcustom)

-----

&nbsp;

### Prerequisites

 * Runs as non-root with fixed UID 10777 and GID 10777. See [howto prepare volume permissions](https://github.com/codeclou/doc/blob/master/docker/README.md).
 * See [howto use SystemD for named Docker-Containers and system startup](https://github.com/codeclou/doc/blob/master/docker/README.md).

-----

&nbsp;

### Usage

If your svgs reside inside `test-fonts/*.svg` you can create an icon font with:

```
docker run \
    -i -t \
    --volume $(pwd)/test-fonts:/rubyapp/fonts/ \
    codeclou/docker-fontcustom:latest \
    fontcustom config
    
docker run \
    -i -t \
    --volume $(pwd)/test-fonts:/rubyapp/fonts/ \
    codeclou/docker-fontcustom:latest \
    fontcustom compile
```

Your font will be generated in `test-fonts/icons/*`.

----

&nbsp;

### License, Liability & Support

 * [![](https://codeclou.github.io/doc/docker-warranty-notice.svg?v1)](https://github.com/codeclou/docker-fontcustom/blob/master/LICENSE.md)
 * Dockerfile and Image is provided under [MIT License](https://github.com/codeclou/docker-fontcustom/blob/master/LICENSE.md)
 * FontForge is available as a whole under the terms of the [GNU GPL](http://www.gnu.org/copyleft/gpl.html)
