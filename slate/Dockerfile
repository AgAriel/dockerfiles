FROM ruby:2.6.3-slim-stretch

COPY entrypoint.sh /usr/bin/

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN chmod 755 /usr/bin/entrypoint.sh \
  && apt-get -qq update && apt-get -qq -y --no-install-recommends install \
    make=4.1-9.1 gcc=4:6.3.0-4 g++=4:6.3.0-4 git=1:2.11.0-3+deb9u4 nodejs=4.8.2~dfsg-1 wget=1.18-5+deb9u3 \
  && apt-get clean && rm -rf /var/lib/apt/lists/* \
  && wget -qO- https://github.com/lord/slate/archive/v2.3.1.tar.gz | tar xzf - \
  && mv slate-2.3.1 slate

WORKDIR /slate

RUN echo 'gem "middleman-livereload", "~> 3.4.6"' >> Gemfile \
  && echo 'activate :livereload' >> config.rb \
  && bundle install

EXPOSE 4567

ENTRYPOINT ["entrypoint.sh"]
