Rails.application.routes.draw do
  root :to => 'galleries#index'
  resources :galleries, :only => [:index, :show]
  mount ShrGallery::Engine => "/shr_gallery"
end
