class CreateSpreeTestimonialBanners < ActiveRecord::Migration
  def up
    create_table :spree_testimonial_banners do |t|
      t.integer :position
      t.attachment :testimonial_banner_img
      t.timestamps
    end
  end

  def down
    drop_table :spree_testimonial_banners
  end
end
