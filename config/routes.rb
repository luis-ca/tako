Newgulpd::Application.routes.draw do

  namespace :api do
    resources :projects
    resources :tickets
  end

  match "/" => "home#index"

end
