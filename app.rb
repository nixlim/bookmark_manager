require 'haml'
require 'sinatra'
require 'sinatra/base'
require_relative 'lib/bookmark_factory'

 class BookmarkManager < Sinatra::Base
   enable :sessions

   get '/' do
     @bookmarks = BookmarkFactory.all
     @error = session[:response]
     haml(:index)
   end

   post '/add_bookmark' do
     session[:response] = BookmarkFactory.check_url(params[:url])
     redirect '/'
   end

 end
