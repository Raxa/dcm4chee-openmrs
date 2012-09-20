source :rubygems

gem 'nokogiri'
gem 'thin'
gem 'sinatra', git: 'https://github.com/juanpastas/sinatra.git'
gem 'sinatra-contrib', git: 'https://github.com/sinatra/sinatra-contrib.git'
gem 'slim'
gem 'coffee-script'
gem 'stylus'
gem 'data_mapper'
gem 'dm-mysql-adapter'
gem 'tux'
gem 'hirb', group: :development
gem 'rspec'
gem 'autotest-growl'

case RUBY_PLATFORM
when /darwin/
  gem 'autotest-fsevent'
when /linux/
  gem 'autotest-inotify'
end
