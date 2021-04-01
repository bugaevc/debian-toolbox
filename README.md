# Debian-based images to use with Toolbox

![build](https://github.com/bugaevc/debian-toolbox/actions/workflows/main.yml/badge.svg)

[Toolbox](https://github.com/containers/toolbox) is a nifty tool that makes containers feel
integrated rather then isolated. Toolbox only provides Fedora images out of the box. This
repo builds working Debian and Ubuntu images for use with Toolbox.

## How do I use this?

1. [**Get Toolbox**](https://github.com/containers/toolbox/blob/main/README.md#installation).

2. **Pull an image:**
    ```
    $ podman pull ghcr.io/bugaevc/debian-toolbox/ubuntu-toolbox:21.04
    ```

3. **Create a toolbox:**
    ```
    $ toolbox create --image ubuntu-toolbox:21.04 ubuntu
    ```

4. **Enjoy!**
    ```
    $ toolbox enter ubuntu
    ⬢[you@toolbox ~]$ 
    ```
