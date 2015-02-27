require_dependency "shr_gallery/application_controller"

module ShrGallery
  class GalleriesController < ApplicationController
    before_action :set_gallery, only: [:show, :edit, :update, :destroy, :load_images]

    # GET /galleries
    def index
      @galleries = Gallery.includes(:images).all
    end

    # GET /galleries/1
    def show
    end

    # GET /galleries/new
    def new
      @gallery = Gallery.new
    end

    # GET /galleries/1/edit
    def edit
    end

    # POST /galleries
    def create
      @gallery = Gallery.new(gallery_params)

      if @gallery.save
        redirect_to @gallery, notice: 'Gallery was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /galleries/1
    def update
      if @gallery.update(gallery_params)
        redirect_to @gallery, notice: 'Gallery was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /galleries/1
    def destroy
      @gallery.destroy
      redirect_to galleries_url, notice: 'Gallery was successfully destroyed.'
    end

    def load_images

    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_gallery
        @gallery = Gallery.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def gallery_params
        params.fetch(:gallery).permit(:name, :slug, :image, :description)
      end
  end
end
