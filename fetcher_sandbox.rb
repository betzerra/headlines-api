require 'rufus-scheduler'
require_relative 'fetcher'

news = NewsFetcher.new
# news.fetch
# news.daily_trending_news
puts news.daily_trending_keywords

# scheduler = Rufus::Scheduler.new
#
# scheduler.every '10m', first_in: '3s' do
#   news.fetch
# end
#
# scheduler.join

# puts news.daily_trending_news
