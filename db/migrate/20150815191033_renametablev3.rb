class Renametablev3 < ActiveRecord::Migration
  def change
  	rename_table :followees_relationship, :followee_relationships
  	rename_table :followers_relationship, :follower_relationships
  end
end
