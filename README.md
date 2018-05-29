HUGO CI
=======

Docker image with Hugo and SSH Clients & RSYNC to be used with gitlab-ci.

This image will deploy Hugo sites to hosts thru SSH using rsync.

SSH_KEY variable must be configured in Gitlab repository

.gitlab-ci.yml example:

```
image: mrbits/hugo-ci

stages:
    - deploy

before_script:
    - eval $(ssh-agent -s)
    - ssh-add <(echo "$SSH_KEY")
    - mkdir -p ~/.ssh
    - '[[ -f /.dockerenv ]] && echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config'

production:
    stage: deploy
    script:
        - hugo
        - rsync -vae ssh public/* user@server:/path/to/hugo/site
    only:
        - master
    environment: production

```
