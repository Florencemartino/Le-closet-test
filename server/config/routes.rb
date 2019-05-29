Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #namespace :api, constraints: { format: :json }, defaults: { format: :json } do
    #resources :operators, only: %i(index)
    #resources :postes, only: %i(index)

    get 'index', to: 'operators#index', as: :index
    get 'operators/:id', to: 'operators#show', as: :operator
    get '/operators/:operator_id/operator_poste/add_poste', to: "operators_poste#add_poste", as: :add_poste
    patch '/operators/:operator_id/operator_poste/added_poste', to: "operators_poste#added_poste", as: :added_poste

  end


