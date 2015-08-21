class Addcolumnfollowerrelationship < ActiveRecord::Migration
  def change
  	rename_column :followerrelationships, :followers, :follower_id
  end
end
