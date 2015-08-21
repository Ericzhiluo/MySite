class Renametables < ActiveRecord::Migration
  def change
  	rename_table :people_followeds, :followees
  	rename_column :followees, :people_followed, :followee_id
  end
end
