Rails.application.routes.draw do
  resources :proveedors
  resources :ficha_docs do
    resources :stock_medicas
  end
  root :to => 'ficha_medicas#index'
  resources :areas
  resources :origens
  resources :etnias
  resources :estado_civils
  resources :nivel_academicos
  resources :sexos
  resources :stock_medicas
  resources :medicamentos
  resources :ficha_medicas do
    resources :diagnosticos 
  end
  get 'diagnosticos/consultas' => 'diagnosticos#consultas', :as => :consultas
  resources :diagnosticos do
    resources :ficha_docs do
      resources :stock_medicas
    end
  end
  resources :categoris
  resources :puesto_saluds do 
    collection do get "getInfo"
    end
  end    
  # devise_for :models
  # devise_for :users
  # resources :layouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
