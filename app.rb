require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup'

set :database, "sqlite3:microblog.sqlite3"
