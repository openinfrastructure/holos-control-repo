FROM busybox

ARG BRANCH

RUN mkdir -p "/etc/puppetlabs/code/environments/${BRANCH}"
COPY . ./etc/puppetlabs/code/environments/${BRANCH}