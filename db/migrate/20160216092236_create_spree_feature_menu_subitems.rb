class CreateSpreeFeatureMenuSubitems < ActiveRecord::Migration
  def up
    create_table :spree_feature_menu_subitems do |t|
      t.integer :spree_feature_menu_head_id
      t.string :item,limit: 40
      t.string :url
      t.timestamps
    end
  end

  def down
    drop_table :spree_feature_menu_subitems
  end
end
