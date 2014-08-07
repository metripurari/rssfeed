require 'rubygems'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new

scheduler.every("1d") do
 	RssFeed.all.each do |rss_feed|
   	   	rss_feed.save_feed 
    end
end