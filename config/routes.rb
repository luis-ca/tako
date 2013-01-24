Newgulpd::Application.routes.draw do

  namespace :api do
    resources :projects
    resources :tickets
    resources :tags
  end

  match "/" => "home#index"

end
