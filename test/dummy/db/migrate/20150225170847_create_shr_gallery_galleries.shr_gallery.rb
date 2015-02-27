# This migration comes from shr_gallery (originally 20150225153644)
class CreateShrGalleryGalleries < ActiveRecord::Migration
  def change
    create_table :shr_gallery_galleries do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.string :image
      t.timestamps null: false
    end
  end
end
