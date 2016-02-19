source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'

group :development do
# Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

# Use postgres for heroku
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Gem in order to retrieve location
gem 'geocoder'

# Better requests
gem 'excon'

# In order to store our env variables
gem 'dotenv-rails'

# In order to see our test coverage
gem 'coveralls', :require => false

# A better server
gem 'thin'

group :development, :test do
  # Add test coverage
  gem 'simplecov', :require => false

  # Security static analysis
  gem 'brakeman', :require => false

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Gem pry rails
  gem 'pry-rails'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # add Rspec for test
  gem 'rspec'
  gem 'rspec-rails'

  # Integration testing
  gem 'capybara'

  # A simple fuubar
  gem 'fuubar'

  # Add rubocop for styling
  gem 'rubocop'

  # Add overcommit for commit styling
  gem 'overcommit'

  # Better errors for sure
  gem 'better_errors'
end
