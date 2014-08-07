class Feed < ActiveRecord::Base
  attr_accessible :rss_feed_id, :title, :url, :pub_date
  
  belongs_to :rss_feed

  validates :title, presence: true
  validates :url, presence: true
  validates :url, uniqueness: true
  validates :title, uniqueness: true
end
