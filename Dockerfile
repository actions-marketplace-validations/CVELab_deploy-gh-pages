FROM /squidfunk/mkdocs-material:9.1.5
LABEL maintainer="CVEDB, alerts@log4j.codes"

COPY action.sh /action.sh

RUN apk add --no-cache bash && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
