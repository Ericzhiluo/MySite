class Adduseridcolumntotodolist < ActiveRecord::Migration
  def change
  	add_column :todolists, :user_id, :integer
  end
end
