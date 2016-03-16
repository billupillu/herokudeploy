class CreateSpreeFeatureMenuHeads < ActiveRecord::Migration
  def up
    create_table :spree_feature_menu_heads do |t|
      t.string :feature_menu_heading, limit: 40
      t.timestamps
    end
  end

  def down
    drop_table :spree_feature_menu_heads
  end
end
