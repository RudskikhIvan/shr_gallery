module ShrGallery
  class Image < ActiveRecord::Base
    mount_uploader :image, ShrGallery::ImageUploader
    belongs_to :gallery, class_name: 'ShrGallery::Gallery'
    validates :name, :length => { :in => 2..150 }
    validates :image, :gallery_id, :presence => true
  end
end
