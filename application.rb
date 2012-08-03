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

DataMapper::Logger.new 'logs/data_mapper.log', :debug
DataMapper.setup :default, 'mysql://openmrs_user:ZWecnpP0&r.A@127.0.0.1:3316/openmrs'

get '/' do
  slim :root,{}, patients: Patient.all
end

get '/js/:path.js' do
  coffee :"js/#{params[:path]}"
end

get '/css/:path.css' do
  stylus :"css/#{params[:path]}"
end
