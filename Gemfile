source 'https://rubygems.org'

ruby '2.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.0'

gem 'puma', '>= 2.12.0'
gem 'foreman'

group :test do
  gem 'rspec-rails', '~> 3.1.0'
  gem 'vcr'
  gem 'webmock'
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.2', '>= 2.2.0'
  gem 'spring'
  gem 'better_errors', '>= 2.2.0'
  gem 'binding_of_caller'

  gem 'factory_girl_rails', '>= 4.6.0'
  gem 'faker'
  gem 'pry'
end

# db
gem 'pg'
gem 'neo4j', '~> 4.1.1'

# env
gem 'dotenv-rails'
gem 'rails_12factor', group: :production

gem 'responders', '~> 2.1', '>= 2.1.1'

# Authentication
gem 'omniauth', '>= 1.3.1'
gem 'omniauth-google-oauth2', '>= 0.2.7'
gem 'devise', '>= 4.0.0'

gem "neo4jrb-paperclip", github: 'subvertallchris/neo4jrb-paperclip', require: "neo4jrb_paperclip"
gem "aws-sdk"
