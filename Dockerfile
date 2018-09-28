FROM ruby
RUN gem install rails
RUN apt-get update && apt-get install nodejs -y --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 vim --no-install-recommends && rm -rf /var/lib/apt/lists/*
COPY blog /blog
CMD ["/blog/bin/rails", "server"] 
