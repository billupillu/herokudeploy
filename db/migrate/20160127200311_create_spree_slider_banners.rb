class CreateSpreeSliderBanners < ActiveRecord::Migration
  def up
    create_table :spree_slider_banners do |t|
      t.string :url
      t.attachment :slider_banner_img
      t.timestamps
    end
  end

  def down
    drop_table :spree_slider_banners
  end
end
