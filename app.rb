require 'sinatra'
require 'sinatra/base'
require_relative 'lib/bookmark_factory'

 class BookmarkManager < Sinatra::Base

   get '/' do
     @bookmarks = BookmarkFactory.all
     erb(:index)
   end

 end
