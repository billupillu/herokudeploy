module Spree
  class Banner < Spree::Base
  	has_attached_file :banner_img,  styles: { medium: "1920x1200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :banner_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :banner_img,size: {less_than: 5.megabytes}

  	validates :banner_img, presence: true
  	validates :heading2, presence: true
  	validates :heading1, presence: true
  	validates :url, presence: true
  	validates :brief, presence: true
  end
end
