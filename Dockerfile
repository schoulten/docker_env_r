FROM rocker/r-ver@sha256:77679d3f7b4d774d87be238641dc426190e6a7d06a636714fa011f92fdd42b11

RUN apt-get update && apt-get install -y \
    libglpk-dev \
    libxml2-dev \
    libcairo2-dev \
    libgit2-dev \
    default-libmysqlclient-dev \
    libpq-dev \
    libsasl2-dev \
    libsqlite3-dev \
    libssh2-1-dev \
    libxtst6 \
    libcurl4-openssl-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff5-dev \
    libjpeg-dev \
    libxt-dev \
    unixodbc-dev \
    wget \
    pandoc \
    git

RUN R -e "install.packages('remotes')"

RUN R -e "remotes::install_github('rstudio/renv@v1.0.7')"
