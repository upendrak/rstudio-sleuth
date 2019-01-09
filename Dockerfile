FROM discoenv/rstudio-nginx:3.5.0

RUN apt-get update && apt-get install -y zlib1g-dev

RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite("devtools"); biocLite("pachterlab/sleuth");'
