source 'https://rubygems.org'

gem 'rails', '3.2.19'
gem 'jquery-rails'

# This gem/s were added to push bootstrapped code to heroku. Then I ran 'bundle install' and then, ran 'rails generate bootstrap:install less' to install 'less CSS'
# gem 'less-rails' (This gem was totally unnecessary and added more problems/bugs. Hence I uninstalled this gem and re-bundled.)
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git' #adding the 'git:' part is important because it updates the version and removes the error.

# This gem was added to set up the password/login/sign up system.
gem 'devise'

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
end
