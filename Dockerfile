FROM ubuntu:bionic

RUN apt-get update \
	&& apt-get install -y autoconf \
		automake \
		inkscape \
		libgdk-pixbuf2.0-dev \
		libxml2-utils \
		pkg-config \
		sassc \
		parallel \
	&& rm -rf /var/lib/apt/lists/*

COPY . .

ENTRYPOINT ["./build.sh"]
