require 'sinatra'
require 'json'

require_relative 'fetcher'

news = NewsFetcher.new

get '/trending/:date' do
  content_type :json

  news.trending_news(params[:date], 3).to_json
end

get '/trending/:date/:count' do
  content_type :json

  news.trending_news(params[:date], params[:count].to_i).to_json
end

get '/latest/:date' do
  content_type :json

  news.latest_news(params[:date]).to_json
end