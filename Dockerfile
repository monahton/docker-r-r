# Dockerfile to run R script

FROM vladdsm/docker-r-studio

MAINTAINER 'Vladimir Zhbanko' <vladimir.zhbanko@gmail.com>

## create directories
RUN mkdir -p /01_data
RUN mkdir -p /02_code
RUN mkdir -p /03_output

## add specific files
COPY /01_data/Gapminder_example.Rmd /01_data/Gapminder_example.Rmd

## copy working script
COPY /02_code/script2run.R /02_code/script2run.R

## run the script on running container
#CMD bash #use this command to check if the files are copied
CMD Rscript /02_code/script2run.R

## command to run this container
#docker run -it --rm -v /Users/vladdsm/Shared:/03_output vladdsm/docker-r-r