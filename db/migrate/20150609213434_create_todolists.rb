class CreateTodolists < ActiveRecord::Migration
  def change
    create_table :todolists do |t|
      t.string :todoitems
      t.timestamps
    end
  end  
end
