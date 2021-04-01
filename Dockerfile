ARG distro=debian
ARG version=bullseye

FROM docker.io/library/$distro:$version

LABEL com.github.containers.toolbox="true" \
      com.github.debarshiray.toolbox="true" \
      usage="This image is meant to be used with the toolbox command" \
      maintainer="Sergey Bugaev <bugaevc@serenityos.org>"

RUN apt update && apt -y upgrade && apt -y install libcap2-bin sudo libnss-myhostname && apt clean
RUN echo '%sudo ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/toolbox
