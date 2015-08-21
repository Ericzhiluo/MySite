class Removecolumn < ActiveRecord::Migration
  def change
  	remove_column :todolists, :account_name
  end
end
