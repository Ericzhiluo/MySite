class Renametablev2 < ActiveRecord::Migration
  def change
  	rename_table :followees, :followees_relationship
  	rename_table :followers, :followers_relationship
  end
end
