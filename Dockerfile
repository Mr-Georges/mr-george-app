FROM ruby:2.6.3

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
# install yarn
#RUN curl -o- -L https://yarnpkg.com/install.sh | bash
# ENV PATH $PATH:/bin

RUN mkdir /myapp
WORKDIR /myapp

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs

RUN node -v
RUN npm -v
RUN ruby -v

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
COPY package.json /myapp/package.json
#COPY yarn.lock /myapp/yarn.lock

RUN gem install bundler -v 1.17.2
RUN gem install foreman -v 0.85.0

RUN bundle install

RUN npm install -g yarn
RUN yarn install --check-files

COPY . /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]