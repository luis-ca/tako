source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mongoid'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "ember-rails"
  gem "handlebars_assets"
  gem "haml_assets"

  gem 'haml'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', git:'git://github.com/rails/jquery-rails.git', tag: 'v2.0'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'



group :development, :test do

  gem 'thin'

end

group :test do

  gem 'rspec-rails'
  gem "guard-rails"
  gem "guard-rspec"
  gem 'rb-fsevent'

  gem 'cucumber-rails'

  gem 'faker'
  gem "json_spec"
  gem 'factory_girl_rails'
  gem 'growl'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'

end

# group :staging, :production do
# end