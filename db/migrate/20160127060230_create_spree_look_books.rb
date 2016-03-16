class CreateSpreeLookBooks < ActiveRecord::Migration
  def up
    create_table :spree_look_books do |t|
      t.string :heading1
      t.string :heading2
      t.string :url
      t.attachment :lookbook_img
      t.timestamps
    end
  end

  def down
    drop_table :spree_look_books
    remove_attachment :spree_look_books, :banner_img
  end
end
