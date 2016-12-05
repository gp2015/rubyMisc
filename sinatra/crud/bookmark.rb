require "sinatra"
require "data_mapper"

class Bookmark
  include DataMapper::Resource
  
  property :id, Serial
  property :url, String
  property :title, String
  property :created_on, Date
end
