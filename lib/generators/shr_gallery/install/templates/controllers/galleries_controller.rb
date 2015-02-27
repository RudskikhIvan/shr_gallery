class GalleriesController < ApplicationController

  def index
    @galleries = ShrGallery::Gallery.all
  end

  # GET /galleries/slug
  def show
    @gallery = ShrGallery::Gallery.find(params[:id])
  end

end
