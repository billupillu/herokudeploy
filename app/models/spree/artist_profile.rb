module Spree
  class ArtistProfile < Spree::Base

  	has_attached_file :artist_img,  styles: { medium: "220x220>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :artist_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :artist_img,size: {less_than: 2.megabytes}

  	validates :artist_img, presence: true
  	validates :artist_name, presence: true
  	validates :artist_brief, presence: true

  end
end
