require 'haml'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/flash'
require_relative 'lib/bookmark_factory'

 class BookmarkManager < Sinatra::Base
   enable :sessions
   register Sinatra::Flash

   get '/' do
     @bookmarks = BookmarkFactory.all
     haml(:index)
   end

   post '/add_bookmark' do
       flash[:error] = 'Invalid URL submitted, try again.' unless BookmarkFactory.check_url(params[:title], params[:url])
     redirect '/'
   end

 end
