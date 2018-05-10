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
     #run the code to add bookmark
     redirect '/'
   end

 end
