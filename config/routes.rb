Rails.application.routes.draw do
  resources :trucks do
    resources :comments
  end

  root 'welcome#index'
end
