require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup'
require './models'

set :database, "sqlite3:microblog.sqlite3"


get '/' do
  # @users = User.all
  erb :home
end

get '/profile' do
  # @users = User.all
  erb :profile
end

# get '/user/:id' do
#   @user = User.find(params[:id])
#   @posts = @user.posts
#   erb :user
# end

# post '/users/new' do
#   puts "*********************"
#   puts params.inspect
#   puts "*********************"
#   # should be called user instead of post
#   User.create(params[:post])
#   redirect '/users'
# end
#
# post '/sign-in' do
#   @user = User.where(fname: params[:fname]).first
#   if @user.password == params[:password]
#     session[:user_id] = @user.id
#     flash[:notice] = "You've been signed in successfully."
#     redirect '/'
#   else
#     flash[:notice] = "There was a problem signing you in."
#     redirect '/sign-in-failed'
#   end
# end
#
# get '/sign-in-failed' do
#   erb :sign_in_failed
# end
