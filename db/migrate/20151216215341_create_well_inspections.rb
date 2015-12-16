class CreateWellInspections < ActiveRecord::Migration
  def change
    create_table :well_inspections do |t|

      t.timestamps null: false
    end
  end
end
