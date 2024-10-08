FROM ruby:3.3.4

# Setup FreeTDS
RUN wget ftp://ftp.freetds.org/pub/freetds/stable/freetds-1.4.19.tar.gz && \
		tar -xzf freetds-1.4.19.tar.gz && \
		cd freetds-1.4.19 && \
		./configure --prefix=/usr/local --with-tdsver=7.4 && \
		make && \
		make install