class CreateSpreeDontMissOuts < ActiveRecord::Migration
  def up
    create_table :spree_dont_miss_outs do |t|
      t.attachment :dont_miss_out_img
      t.string :dont_miss_out_heading_sub
      t.string :dont_miss_out_heading_main
      t.string :dont_miss_out_content
      t.string :dont_miss_out_url
      t.timestamps
    end
  end

  def down
    drop_table :spree_dont_miss_outs
  end
end
