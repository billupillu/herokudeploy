module Spree
  class LookBook < Spree::Base
  	has_attached_file :lookbook_img,  styles: { medium: "571x710>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :lookbook_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :lookbook_img,size: {less_than: 4.megabytes}

  	validates :lookbook_img, presence: true
  	validates :heading2, presence: true
  	validates :heading1, presence: true
  	validates :url, presence: true
  	
  end
end
