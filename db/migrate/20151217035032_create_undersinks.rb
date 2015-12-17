class CreateUndersinks < ActiveRecord::Migration
  def change
    create_table :undersinks do |t|

      t.timestamps null: false
    end
  end
end
