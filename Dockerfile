FROM golang:alpine
LABEL "Maintainer"="MrBiTs"
LABEL "e-mail"="mrbits.dcf@gmail.com"
LABEL "version"="0.7"

RUN apk add --no-cache git openssh-client rsync

RUN go get -u -v github.com/spf13/hugo

