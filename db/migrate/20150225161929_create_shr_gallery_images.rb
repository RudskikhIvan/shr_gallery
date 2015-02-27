class CreateShrGalleryImages < ActiveRecord::Migration
  def change
    create_table :shr_gallery_images do |t|
      t.string :name, null: false
      t.text :description
      t.string :image, null: false
      t.string :alt
      t.integer :gallery_id, index: true
      t.datetime :created_at, null: false
    end
  end
end
