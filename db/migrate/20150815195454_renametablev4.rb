class Renametablev4 < ActiveRecord::Migration
  def change
  	rename_table :followee_relationships, :followeerelationships
  	rename_table :follower_relationships, :followerrelationships
  end
end
