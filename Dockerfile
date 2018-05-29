FROM golang:latest
LABEL "Maintainer"="MrBiTs"
LABEL "e-mail"="mrbits.dcf@gmail.com"
LABEL "version"="0.3"

RUN apt-get update && apt-get -y install openssh-client rsync

RUN go get -u -v github.com/spf13/hugo

