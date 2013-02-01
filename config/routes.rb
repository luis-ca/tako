Newgulpd::Application.routes.draw do

  namespace :api do
    resources :projects
    resources :tickets
    resources :tags
    resources :taggings
  end

  match "/" => "home#index"

end
