Rails.application.routes.draw do
  devise_for :users
  get 'infos/about'
# get 'welcome/index'

  resources :articles do
    resources :comments
  end
  root 'welcome#index'
end
