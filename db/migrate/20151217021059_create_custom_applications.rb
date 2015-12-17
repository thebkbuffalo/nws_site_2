class CreateCustomApplications < ActiveRecord::Migration
  def change
    create_table :custom_applications do |t|

      t.timestamps null: false
    end
  end
end
