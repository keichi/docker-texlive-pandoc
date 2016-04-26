FROM hiono/texlive

MAINTAINER Keichi Takahashi <keichi.t@me.com>

RUN apt-get update && apt-get install -y make libgmp10 && apt-get clean all && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN wget -q --no-check-certificate https://github.com/jgm/pandoc/releases/download/1.17.0.2/pandoc-1.17.0.2-1-amd64.deb && \
   dpkg -i pandoc-1.17.0.2-1-amd64.deb && rm pandoc-1.17.0.2-1-amd64.deb
