Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api do
    namespace :v1 do
      resources :organisations do
        resources :events
        resources :content_blocks
      end
    end
  end
  root to: 'admin/organisations#index'
end
