if development?
  require "sinatra/reloader"
  Bundler.require :default, :development
  require 'hirb'
  Hirb.enable
  DataMapper::Logger.new 'logs/data_mapper.log', :debug
end
