class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.references :spree_user, index: true, foreign_key: true
      t.string :name, limit: 60
      t.text :content

      t.timestamps null: false
    end
  end
end
