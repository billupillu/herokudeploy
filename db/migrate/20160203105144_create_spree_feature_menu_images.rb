class CreateSpreeFeatureMenuImages < ActiveRecord::Migration
  def up
    create_table :spree_feature_menu_images do |t|
      t.attachment :feature_img
      t.string :feature_url
      t.string :feature_h_sub,limit: 60
      t.string :feature_h_main,limit: 60
      t.string :feature_h_footer,limit: 100
      t.timestamps
    end
  end

  def down
    drop_table :spree_feature_menu_images
  end
end
