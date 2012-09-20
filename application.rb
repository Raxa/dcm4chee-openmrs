require 'rubygems'
require 'bundler'
Bundler.require(:default)
require 'sinatra'
require 'sinatra/content_for'
require 'slim'
require 'stylus'
require 'data_mapper'

['models/**/*.rb', 'config/**/*.rb', 'helpers.rb'].each do |path|
  Dir[path].each {|file| load file}
end

get '/' do
  @patients = Patient.all
  slim :root
end

post '/settings' do
  #Settings[:openmrs_sql_url] = params[:]
end

get(/(.*).js/) do |path|
  coffee :"#{path}"
end

get(/(.*).css/) do |path|
  stylus :"#{path}"
end

get '/test' do
  load ''
  slim :'test/index', layout: false
end
