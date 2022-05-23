FROM ruby:3.1.1
ARG ROOT="/insta_clone"
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo

WORKDIR ${ROOT}

RUN apt-get update; \
  apt-get install -y --no-install-recomends \
  mariadb-client tzdata

COPY Gemfile ${ROOT}
COPY Gemfile.lock ${ROOT}
RUN gem install bundler
RUN gem install --jobs 4

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
EXPOSE 3000

CMD ["rails", "server, "-b", "0.0.0.0"]