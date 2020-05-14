FROM Ubuntu
RUN apt-get install cron 
RUN mkdir /script
COPY bashscripts /script
WORKDIR /script/
RUN /bashscripts/filesrun.sh
ENTRYPOINT ["/bin/bash"]
