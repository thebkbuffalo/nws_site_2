class CreateCraneServices < ActiveRecord::Migration
  def change
    create_table :crane_services do |t|

      t.timestamps null: false
    end
  end
end
