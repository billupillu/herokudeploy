module Spree
  class FeatureMenuImage < Spree::Base
  	has_attached_file :feature_img,  styles: { medium: "370x290>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :feature_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :feature_img,size: {less_than: 2.megabytes}

  	validates :feature_img, presence: true
  	validates :feature_url, presence: true
  	validates :feature_h_sub, presence: true
  	validates :feature_h_main, presence: true
  	validates :feature_h_footer, presence: true
  end
end
