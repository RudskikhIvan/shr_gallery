module ShrGallery
  class Gallery < ActiveRecord::Base
    extend FriendlyId
    mount_uploader :image, ShrGallery::ImageUploader

    has_many :images, class_name: 'ShrGallery::Image', :dependent => :destroy

    friendly_id :slug, use: [:slugged, :finders]

    validates :name, :length => { :in => 2..150 }
    validates :slug, :length => { :in => 2..150 }, :uniqueness => true
    validates :image, :presence => true

  end
end
