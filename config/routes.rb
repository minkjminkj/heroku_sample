Rails.application.routes.draw do
  get 'entries/new'

  resources :blogs do
    resources :entries
  end
end
