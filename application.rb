require 'rubygems'
require 'bundler'
Bundler.require(:default)
require 'sinatra'
require 'sinatra/content_for'
require './config/development' if development?
require 'slim'
require 'stylus'
load 'helpers.rb'
require 'data_mapper'
Dir['models/**/*.rb'].each {|file| load file}

use Rack::Protection, except: :session_hijacking

DataMapper::Logger.new 'logs/data_mapper.log', :debug
# DataMapper.setup :default, Image.Settings[:sql_url]

get '/' do
  @patients = Patient.all
  slim :root
end

post '/settings' do
  #Settings[:openmrs_sql_url] = params[:]
end

get /(.*).js/ do |path|
  coffee :"#{path}"
end

get /(.*).css/ do |path|
  stylus :"#{path}"
end

get '/test' do
  load ''
  slim :'test/index', layout: false
end
