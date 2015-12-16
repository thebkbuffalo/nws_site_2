class CreateNewServiceLines < ActiveRecord::Migration
  def change
    create_table :new_service_lines do |t|

      t.timestamps null: false
    end
  end
end
