class CreateSoftners < ActiveRecord::Migration
  def change
    create_table :softners do |t|

      t.timestamps null: false
    end
  end
end
