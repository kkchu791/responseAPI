source 'https://rubygems.org'

gem 'rails', '4.2.5.1'
gem 'bcrypt'
gem "active_model_serializers", github: "rails-api/active_model_serializers"
gem 'figaro'
gem 'rack-cors'

group :development, :test do
  gem 'byebug'
end

group :test do
  gem 'rspec-rails'
  gem 'rspec_api_documentation'
  gem 'factory_girl_rails'
  gem 'simplecov', :require => false
  gem 'coveralls', :require => false
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-rvm'
  gem 'capistrano-bundler'
end
