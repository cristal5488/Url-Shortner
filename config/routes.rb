Rails.application.routes.draw do
  resources :url_mappings
  root 'url_mappings#index'
  get '/:id', to: 'url_mappings#take_me_there'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
