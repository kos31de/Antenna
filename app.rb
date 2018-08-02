require 'sinatra'
require 'rss'
get '/' do
  @rss1 = RSS::Parser.parse "http://shgam.hatenadiary.jp/rss"
  @rss2 = RSS::Parser.parse "https://kousy.hatenablog.com/rss"
  @hello = "app.rbから文字を表示"
  erb :index
end
