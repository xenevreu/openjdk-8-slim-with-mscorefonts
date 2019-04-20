FROM openjdk:8-slim

# Install windows fonts for JasperReport
RUN echo "deb http://httpredir.debian.org/debian jessie main contrib" > /etc/apt/sources.list \
&& echo "deb http://security.debian.org/ jessie/updates main contrib" >> /etc/apt/sources.list \
&& echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections \
&& apt-get update \
&& apt-get install -y ttf-mscorefonts-installer \
&& apt-get clean \
&& apt-get autoremove -y \
&& rm -rf /var/lib/apt/lists/*