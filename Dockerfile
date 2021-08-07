FROM ruby:3.0.0

EXPOSE 3000

RUN mkdir rubyapp/
WORKDIR rubyapp/

ADD . .

RUN bundle install
RUN rails db:migrate
CMD ["rails", "server", "--binding", "0.0.0.0", "--port", "3000"]