class Addstartcolumn < ActiveRecord::Migration
  def change
  	add_column :todolists, :start, :date
  	add_column :todolists, :end, :date
  end
end
