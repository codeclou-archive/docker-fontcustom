FROM ubuntu:16.04

#
# PACKAGES
#
RUN sudo apt-get update
RUN sudo apt-get -y install ruby fontforge
RUN wget http://repo.codeclou.io/bin/woff-code-latest.zip
RUN unzip woff-code-latest.zip -d sfnt2woff && cd sfnt2woff && make && sudo mv sfnt2woff /usr/local/bin/
RUN gem install fontcustom


RUN mkdir /fonts/
WORKDIR /fonts/

#
# WILL BE OVERWRITTEN
#
CMD fontcustom help
