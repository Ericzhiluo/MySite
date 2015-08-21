class AddStatusToTodolists < ActiveRecord::Migration
  def change
  	add_column :todolists, :duration, :string
  end
end
