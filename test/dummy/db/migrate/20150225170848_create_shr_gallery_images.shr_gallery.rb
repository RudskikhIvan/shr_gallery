# This migration comes from shr_gallery (originally 20150225161929)
class CreateShrGalleryImages < ActiveRecord::Migration
  def change
    create_table :shr_gallery_images do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :alt
      t.integer :gallery_id, index: true
      t.datetime :created_at, null: false
    end
  end
end
