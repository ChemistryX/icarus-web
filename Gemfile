source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

gem "rails", "~> 7.0.2"
gem "mongoid", git: "https://github.com/mongodb/mongoid"
gem "mongoid-enum", git: "https://github.com/choilive/mongoid-enum.git"
gem "devise"
gem "sprockets-rails"
gem "haml-rails"
gem "puma", "~> 5.0"
gem "tailwindcss-rails"
gem "heroicon"
gem "jbuilder"
gem 'jquery-rails'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end
