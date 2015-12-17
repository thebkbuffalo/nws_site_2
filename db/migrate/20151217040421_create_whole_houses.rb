class CreateWholeHouses < ActiveRecord::Migration
  def change
    create_table :whole_houses do |t|

      t.timestamps null: false
    end
  end
end
