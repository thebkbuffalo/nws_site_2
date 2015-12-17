class CreateChlorineRemovals < ActiveRecord::Migration
  def change
    create_table :chlorine_removals do |t|

      t.timestamps null: false
    end
  end
end
