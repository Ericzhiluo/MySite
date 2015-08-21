class Followeraddcolumn < ActiveRecord::Migration
  def change
  	add_column :followers, :user_id, :integer
  	add_column :followers, :followers, :integer
  end
end
