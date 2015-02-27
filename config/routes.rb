ShrGallery::Engine.routes.draw do
  resources :galleries do
    get 'load_images' => 'galleries#load_images', :on => :member
    resources :images
  end
  root :to => 'galleries#index'

end
