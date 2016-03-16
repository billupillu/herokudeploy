module Spree
  class TestimonialBanner < Spree::Base
    acts_as_list

    default_scope { order(:position) }

    has_attached_file :testimonial_banner_img,  styles: { medium: "1500x1125>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :testimonial_banner_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :testimonial_banner_img,size: {less_than: 5.megabytes}

  	
  	
  end
end
