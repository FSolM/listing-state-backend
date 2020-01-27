Rails.application.routes.draw do
  scope '/api' do
    get 'user/create', to: 'users#create'
    get 'user/delete', to: 'users#destroy'

    get 'session/create', to: 'sessions#create'
    get 'session/delete', to: 'sessions#destroy'

    get 'properties', to: 'properties#index'
    get 'property/:id', to: 'properties#show'
    get 'property/create', to: 'properties#create'
    get 'property/delete', to: 'properties#destroy'
  end
end
