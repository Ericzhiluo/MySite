class Peoplefollowedaddcolumn < ActiveRecord::Migration
  def change
  	add_column :people_followeds, :user_id, :integer
  	add_column :people_followeds, :people_followed, :integer
  end
end
