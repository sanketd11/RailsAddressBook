Rails.application.routes.draw do
  

  devise_for :users
  # get 'contacts/new'

  # get 'contacts/edit'

  # get 'contacts/create'

  # get 'contacts/delete'

  # get 'contacts/index'


  get 'welcome/index'
  root 'contacts#index'

  resources :contacts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
