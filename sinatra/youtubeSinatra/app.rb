require 'rubygems'
require 'sinatra'

set :port, 80

get '/' do
  @name = "biff"
  "Hello, " + @name
end
