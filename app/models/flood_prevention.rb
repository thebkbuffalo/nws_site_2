class FloodPrevention < ActiveRecord::Base
  has_attached_file :flood_pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://www.greenhome.com/wordpress/wp-content/uploads/2012/03/water.jpg"
  validates_attachment_content_type :flood_pic, content_type: /\Aimage\/.*\Z/
end
