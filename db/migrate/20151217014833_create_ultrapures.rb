class CreateUltrapures < ActiveRecord::Migration
  def change
    create_table :ultrapures do |t|

      t.timestamps null: false
    end
  end
end
