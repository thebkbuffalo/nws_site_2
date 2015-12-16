class CreateServiceRepairs < ActiveRecord::Migration
  def change
    create_table :service_repairs do |t|

      t.timestamps null: false
    end
  end
end
