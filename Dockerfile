FROM fedora:39

RUN dnf -y install pandoc texlive 'tex(fvextra.sty)'
RUN dnf -y install git

WORKDIR /app

RUN mkdir /pandoc-filters
RUN git clone https://github.com/dialoa/columns.git /pandoc-filters/columns

RUN pandoc --version
ENTRYPOINT ["pandoc", "--lua-filter=/pandoc-filters/columns/columns.lua"]