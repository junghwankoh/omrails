source 'https://rubygems.org'

gem 'rails', '3.2.19'
gem 'jquery-rails'

group :production do
	gem 'pg'
	gem 'rails_12factor'
end

group :development, :test do
	gem 'sqlite3'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'bootstrap-sass', '~> 3.2.0'
  # These gems were added to push bootstrapped code to heroku.
  gem 'less-rails'
  gem 'twitter-bootstrap-rails'
end
