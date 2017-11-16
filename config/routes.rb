Rails.application.routes.draw do
  resources :trucks do
    resources :comments
  end

  resources :comments do
    resources :subcomments
  end

  # get 'trucks/toyotas'

  root 'welcome#index'
end
