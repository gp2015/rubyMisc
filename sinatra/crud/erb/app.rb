require "sinatra/respond_with"

get "/" do
  @bookmarks = get_all_bookmarks
  erb :bookmark_list, @bookmarks
end

helpers do
  def h(text)
    Rack::Utils.escape_html(txt)
  end
end
