# Pull base image.
FROM ruby:2.3.0

RUN mkdir -p /usr/src/app/
RUN mkdir -p /var/www/
RUN mkdir -p usr/src/app/site/www

COPY . /usr/src/app

# Define mountable directories.
VOLUME ["/usr/src/app", "/var/www"]

ENV BUNDLE_PATH /usr/src/app/.bundle
ENV JEKYLL_DESTINATION /usr/src/app/site/www
ENV JEKYLL_HOST 0.0.0.0

# Define working directory.
WORKDIR /usr/src/app

RUN bundle check || bundle install

CMD bundle exec jekyll serve --host $JEKYLL_HOST --watch --force_polling --destination $JEKYLL_DESTINATION

# Expose ports.
EXPOSE 4000