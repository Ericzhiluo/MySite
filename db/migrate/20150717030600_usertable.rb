class Usertable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
		  t.string :account_name
		  t.string :email
		  t.string :password_digest
		  t.timestamps
	end
  end
end
