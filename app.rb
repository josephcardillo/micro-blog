require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup'
require './models'
require 'sinatra/flash'
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

get '/create-post' do
  # @user = User.all
  erb :create_post
end

# show post
get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post_page
end

# delete post
delete '/post/:id' do
  puts "*********************"
  puts params.inspect
  puts "*********************"
	@post = Post.delete(params[:id])
	redirect '/profile'
end

# edit post
put '/post/:id' do
    @post = Post.find(params[:id])
    @post.update(title: params[:title], content: params[:content])
    @post.save
  redirect '/post/'+params[:id]
end

# edit user
put '/user/:id' do
    @user = User.find(params[:id])
    @user.update(
      fname: params[:fname],
      lname: params[:lname],
      email: params[:email],
      username: params[:username],
      password: params[:password]
    )
    @user.save
  redirect '/user/'+params[:username]
end

# delete user
delete '/user/:id' do
  puts "*********************"
  puts params.inspect
  puts "*********************"
  @user = User.find(params[:id])
  # @posts = User.find(params[:id]).posts
  # @posts.delete
  @posts = Post.all
  @posts.each do |post|
    if post.user_id == @user.id
	  post.delete
	redirect '/'
    end
  end
end


get '/feed' do
  @posts = Post.all.reverse
  @user = User.all
  erb :feed
end

get '/user/:username' do
  @user = User.find_by(username: params[:username])
  @posts = @user.posts.reverse
  erb :user
end

# create post
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
  puts "*********************"
  puts @user
  puts "*********************"
  # unless @user?
  #   flash[:notice] = "You're sign-in attempt has failed."
  if @user.nil?
    flash[:notice] = "Username does not exist."
    redirect '/'
  elsif @user.password == params[:password]
    session[:user_id] = @user.id
    redirect '/profile'
  else
    flash[:notice] = "You're login attempt has failed."
    redirect '/'
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

post '/sign-out' do
  session[:user_id] = nil
    redirect '/'
  end

# post '/post-deleted' do
#   puts "*********************"
#   puts params.inspect
#   puts "*********************"
#   @post = Post.find(params[:id])
#   @post.destroy
#     redirect '/profile'
#   end
