class CreateWaterTestings < ActiveRecord::Migration
  def change
    create_table :water_testings do |t|

      t.timestamps null: false
    end
  end
end
