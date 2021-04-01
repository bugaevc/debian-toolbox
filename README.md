# Debian-based images to use with Toolbox

![build](https://github.com/bugaevc/debian-toolbox/actions/workflows/main.yml/badge.svg)

[Toolbox](https://github.com/containers/toolbox) is a nifty tool that makes containers feel
integrated rather then isolated. Toolbox only provides Fedora images out of the box. This
repo builds working Debian and Ubuntu images for use with Toolbox.

## How do I use this?

1. [**Get Toolbox**](https://github.com/containers/toolbox/blob/main/README.md#installation).

2. **Log into GitHub Container Registry with Podman.**
    You can find the official instructions [here](https://docs.github.com/en/packages/guides/configuring-docker-for-use-with-github-packages).
    Or, just follow these steps:
    * Go to https://github.com/settings/tokens
    * Make a new token, allow it to `read:packages` (and perhaps `write:packages`).
    * Run
        ```
        $ podman login https://docker.pkg.github.com
        ```

        Paste the token when prompted for password. 

3. **Pull an image:**
    ```
    $ podman pull docker.pkg.github.com/bugaevc/debian-toolbox/ubuntu-toolbox:21.04
    ```

4. **Create a toolbox:**
    ```
    $ toolbox create --image ubuntu-toolbox:21.04 ubuntu
    ```

5. **Enjoy!**
    ```
    $ toolbox enter ubuntu
    ⬢[you@toolbox ~]$ 
    ```
