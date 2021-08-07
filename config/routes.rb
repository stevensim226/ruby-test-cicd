Rails.application.routes.draw do
  get 'cars/homepage', to: 'cars#homepage'
  post 'cars/homepage', to: 'cars#homepagePost'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
