class CreateSpreeBanners < ActiveRecord::Migration
  def up
    create_table :spree_banners do |t|
      t.string :heading1
      t.string :heading2
      t.text :brief
      t.string :url
      t.attachment :banner_img
      t.timestamps
    end
  end

  def down
    drop_table :spree_banners
    remove_attachment :spree_banners, :banner_img
  end
end


