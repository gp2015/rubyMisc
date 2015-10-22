require 'rubygems'
require 'sinatra'
require 'haml'

set :port, 80

get '/' do
  @title = "Home Page"
  haml :index
end

get '/about' do
  @title = "About Us"
  haml :about
end

get '/contact' do
  @title = "Contact Us"
  haml :contact
end
