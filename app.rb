require 'haml'
require 'sinatra'
require 'sinatra/base'
require_relative 'lib/bookmark_factory'

 class BookmarkManager < Sinatra::Base

   get '/' do
     @bookmarks = BookmarkFactory.all
     haml(:index)
   end

   post '/add_bookmark' do
     BookmarkFactory.create(params[:url])
     redirect '/'
   end

 end
