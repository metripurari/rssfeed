class Feed < ActiveRecord::Base
  attr_accessible :rss_feed_id, :title, :url
  belongs_to :rss_feed

  validates :name, presence: true
  validates :url, presence: true
  validates :url, uniqueness: true
  validates :name, uniqueness: true
end
