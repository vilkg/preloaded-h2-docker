FROM java:7

ENV H2_HOME /opt/h2
ENV DATABASE_NAME test

RUN mkdir -p ${H2_HOME}

WORKDIR ${H2_HOME}

ADD h2*.zip h2.zip
ADD run.sh run.sh
ADD init-scripts init

RUN unzip h2.zip && \
    rm h2.zip && \
    chmod +x init/concat_sql_scripts.sh && \
    init/concat_sql_scripts.sh

EXPOSE 8080 1521

ENTRYPOINT ["/bin/bash", "run.sh"]