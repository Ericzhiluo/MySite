class CreatePeopleFolloweds < ActiveRecord::Migration
  def change
    create_table :people_followeds do |t|

      t.timestamps
    end
  end
end
