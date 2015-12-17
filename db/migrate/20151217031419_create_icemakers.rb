class CreateIcemakers < ActiveRecord::Migration
  def change
    create_table :icemakers do |t|

      t.timestamps null: false
    end
  end
end
