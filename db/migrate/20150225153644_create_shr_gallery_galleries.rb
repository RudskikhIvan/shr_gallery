class CreateShrGalleryGalleries < ActiveRecord::Migration
  def change
    create_table :shr_gallery_galleries do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.text :description
      t.string :image
      t.datetime :created_at, null: false
    end
  end
end
