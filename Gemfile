source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'


gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'mysql2'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise'
gem 'omniauth-twitter'
# 日本語化
gem 'rails-i18n', '~> 6.0'
gem 'devise-i18n'
gem 'faker'
gem 'dotenv-rails'
# Bootstrap
gem 'devise-bootstrap-views', '~> 1.0'
gem 'bootstrap', '~> 4.3.1'
gem 'jquery-rails'

group :production, :staging do
    gem 'unicorn'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rubocop', require: false
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'

end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
