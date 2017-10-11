Rails.application.routes.draw do
  resources :taggings
  resources :tags
  resources :comments
  resources :tips

  get '/tips/:id/delete', to: 'tips#delete'
                  #controller # action /method
                  # pages)_controller.rb # def about
  get '/about', to: 'pages#about'

  get '/contact_us', to: 'pages#contact'

  get '/', to: 'pages#index'
end
