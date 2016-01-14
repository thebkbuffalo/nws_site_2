class AddPhotoTagToReverseOsmosis < ActiveRecord::Migration
  def change
    add_column :basements, :basement_tag, :text
    add_column :undersinks, :undersink_tag, :text
    add_column :whole_houses, :whole_house_tag, :text
  end
end
