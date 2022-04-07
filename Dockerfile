FROM ruby:2.7

WORKDIR /usr/src/app

COPY Gemfile ./
COPY lib/bulk_issue_creator/version.rb lib/bulk_issue_creator/version.rb
COPY bulk_issue_creator.gemspec ./
RUN bundle install

COPY bin/ bin/
COPY lib/ lib/
COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
