class CreateSpreeArtistProfiles < ActiveRecord::Migration
  def up
    create_table :spree_artist_profiles do |t|
      t.attachment :artist_img
      t.string :artist_name,limit: 100
      t.string :artist_expertise
      t.text :artist_brief
      t.string :artist_fb
      t.string :artist_url
      t.string :xtra_field
      t.timestamps
    end
  end

  def down
    drop_table :spree_artist_profiles
  end
end
