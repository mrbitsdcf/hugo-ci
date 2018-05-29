FROM publysher/hugo 
LABEL "Maintainer"="MrBiTs"
LABEL "e-mail"="mrbits.dcf@gmail.com"
LABEL "version"="0.2"

RUN apt-get update && apt-get -y install openssh-client rsync

