class Addcolumntotodolist < ActiveRecord::Migration
  def change
  	add_column :todolists, :account_name, :string
  end
end
