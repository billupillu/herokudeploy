module Spree
  class DontMissOut < Spree::Base
  	has_attached_file :dont_miss_out_img,  styles: { medium: "1600x800>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :dont_miss_out_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :dont_miss_out_img,size: {less_than: 4.megabytes}

  	validates :dont_miss_out_img, presence: true
  	validates :dont_miss_out_heading_sub, presence: true
  	validates :dont_miss_out_heading_main, presence: true
  	validates :dont_miss_out_url, presence: true
  	
  end
end
