Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :tareas do
    member do
      post 'add_ok'
      delete 'remove_ok', to:'tareas#remove_ok', as: 'remove_ok'      
    end
  end

  root to: "tareas#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
