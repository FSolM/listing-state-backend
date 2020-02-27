Rails.application.routes.draw do
  scope '/api' do
    post 'user/signup', to: 'users#create'
    post 'user/login', to: 'users#search'

    get 'properties', to: 'properties#index'
    get 'property/:id', to: 'properties#show'
    post 'property/create', to: 'properties#create'
    delete 'property/:id', to: 'properties#destroy'
  end
end
