class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :title
      t.string :url
      t.integer :rss_feed_id
      t.datetime :pub_date

      t.timestamps
    end
  end
end
