Rails.application.routes.draw do
  get 'welcome/sample'

  #match 'controller(/:action(/:id))', :via => :get

  resources :projects do
  	resources :tasks
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
