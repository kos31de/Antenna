require 'sinatra'
require 'rss'
require 'pry'

get '/' do
  @rss1 = RSS::Parser.parse "http://blog.jnito.com/rss"
  @rss2 = RSS::Parser.parse "https://kousy.hatenablog.com/rss"
  @hello = "app.rbから文字を表示"
  erb :index
end

get '/create' do
  erb :create
end
