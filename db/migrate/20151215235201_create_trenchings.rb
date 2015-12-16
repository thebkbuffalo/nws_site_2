class CreateTrenchings < ActiveRecord::Migration
  def change
    create_table :trenchings do |t|

      t.timestamps null: false
    end
  end
end
