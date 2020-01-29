Rails.application.routes.draw do
  scope '/api' do
    post 'user/signup', to: 'users#create'
    post 'user/login', to: 'users#search'
    delete 'user/delete/:id', to: 'users#destroy'

    get 'properties', to: 'properties#index'
    get 'property/:id', to: 'properties#show'
    post 'property/create', to: 'properties#create'
    delete 'property/delete', to: 'properties#destroy'
  end
end
