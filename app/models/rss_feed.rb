class RssFeed < ActiveRecord::Base
  require 'rubygems'
  require 'simple-rss'
  require 'open-uri'

  attr_accessible :name, :url
  has_many :feeds, dependent: :destroy

  def save_feed
  	response = SimpleRSS.parse open(url)
    attributes = response.items.map{|f| {title: f[:title], url: f[:link], pub_date: f[:pubDate], rss_feed_id: id}}
    Feed.create(attributes)  
  end
end
