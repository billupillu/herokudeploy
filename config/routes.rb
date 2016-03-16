Rails.application.routes.draw do
    resources :testimonials
    mount Spree::Core::Engine, :at => '/'
end

Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :banners
    resources :look_books
    resources :slider_banners
    resources :testimonial_banners do
      collection do
        post :update_positions
      end
    end
    resources :artist_profiles
    resources :dont_miss_outs, only: [:index, :edit, :update, :destroy]
    resources :feature_menu_images, only: [:index, :edit, :update, :destroy]
    resources :feature_menu_heads, except: [:destroy]
    resources :feature_menu_subitems
  end
end
