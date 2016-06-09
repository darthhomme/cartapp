source 'https://rubygems.org'

gem 'rails', '4.2.5'
group :production do
  gem 'rails_12factor', group: :production
  gem 'thin'
  gem 'pg'
end
gem 'jquery-rails'
group :assets do
  gem 'sass-rails', '~> 5.0'
  # gem 'twitter-bootstrap-rails'
end
gem 'uglifier', '>= 1.3.0'
#gem 'coffee-rails', '~> 4.1.0'
gem 'devise'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
# gem 'rails_12factor', group: :production
group :development, :test do
  gem 'byebug'
end
group :development do
  gem 'rails_12factor', group: :production
  gem 'sqlite3'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end
