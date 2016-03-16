module Spree
  class SliderBanner < Spree::Base
  	 has_attached_file :slider_banner_img,  styles: { medium: "1500x1250>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :slider_banner_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :slider_banner_img,size: {less_than: 5.megabytes}

  	validates :slider_banner_img, presence: true
  	validates :url, presence: true
  end
end
