class CreateFloodPreventions < ActiveRecord::Migration
  def change
    create_table :flood_preventions do |t|

      t.timestamps null: false
    end
  end
end
