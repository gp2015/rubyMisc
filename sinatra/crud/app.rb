require "sinatra"
require "data_mapper"
require "dm-serializer"

require_relative "bookmark"

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/bookmarks.db")

# Keep DB
DataMapper.finalize.auto_upgrade!
# Make new DB
# DataMapper.finalize.auto_migrate!

# List all bookmarks and order by title
def get_all_bookmarks
  Bookmark.all(:order => :title)
end
get "/bookmarks" do # route for get_all_bookmarks
  content_type :json
  get_all_bookmarks.to_json
end

# List all bookmarks and order by creation date
def get_all_bookmarks_by_date
  Bookmark.all(:order => :created_on)
end
get "/bookmarks_by_date" do # route for get_all_bookmarks_by_date
  content_type :json
  get_all_bookmarks_by_date.to_json
end

# Create new bookmark
post "/bookmarks" do
  input = params.slice "url", "title"
  bookmark = Bookmark.create input
  # Created
  [201, "/bookmarks/#{bookmark['id']}"]
end

# added slice method to params to filter input data
# Produces hash that only includes keys provided in whitelist
class Hash
  def slice(*whitelist)
    whitelist.inject({}) {|result, key| result.merge(key => self[key])}
  end
end

# Get bookmark by id
get "/bookmarks/:id" do
  id = params[:id]
  bookmark = Bookmark.get(id)
  content_type :json
  bookmark.to_json
end

# Update bookmark by id
put "/bookmarks/:id" do
  id = params[:id]
  bookmark = Bookmark.get(id)
  input = params.slice "url", "title"
  bookmark.update input
  204 # No Content
end

# Delete bookmark by id
delete "/bookmarks/:id" do
  id = params[:id]
  bookmark = Bookmark.get(id)
  bookmark.destroy
  200 # OK
end
