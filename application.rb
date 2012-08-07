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
DataMapper.setup :default, 'mysql://openmrs_user:ZWecnpP0&r.A@127.0.0.1:3316/openmrs'

get '/' do
  @patients = Patient.all
  slim :root
end

get /(.*).js/ do |path|
  coffee :"#{path}"
end

get /(.*).css/ do |path|
  stylus :"#{path}"
end

get '/test' do
  slim :'test/index', layout: false
end
