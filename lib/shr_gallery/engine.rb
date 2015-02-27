module ShrGallery
  class Engine < ::Rails::Engine
    isolate_namespace ShrGallery
    require 'haml-rails'
    require 'mini_magick'
    require 'carrierwave'
    require 'bootstrap-sass'
    require 'jquery-rails'
    require 'plupload-rails'
    require 'jquery-ui-rails'
    require 'lodash-rails'
    require 'friendly_id'
  end
end
