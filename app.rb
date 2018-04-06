require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup'
require './models'
enable :sessions

set :database, "sqlite3:microblog.sqlite3"

def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
end


get '/' do
  # @users = User.all
  erb :home
end

get '/profile' do
  # @user = User.all
  erb :profile
end

get '/feed' do
  @posts = Post.all
  @user = User.all
  erb :feed
end

get '/user/:id' do
  @user = User.find(params[:id])
  @posts = @user.posts
  erb :user
end

post '/user/new' do
  puts "*********************"
  puts params.inspect
  puts "*********************"
  # should be called user instead of post
  User.create(params[:post])
  redirect '/'
end

post '/sign-in' do
  @user = User.where(username: params[:username]).first
  if @user.password == params[:password]
    session[:user_id] = @user.id
    redirect '/feed'
  else
    redirect '/sign-in-failed'
  end
end

get '/sign-in-failed' do
  erb :sign_in_failed
end

post '/user/:id/posts' do
  puts "*********************"
  puts params.inspect
  puts "*********************"
  Post.create(params[:post])
  redirect '/profile'
end
