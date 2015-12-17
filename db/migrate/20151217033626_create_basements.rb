class CreateBasements < ActiveRecord::Migration
  def change
    create_table :basements do |t|

      t.timestamps null: false
    end
  end
end
