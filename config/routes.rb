Newgulpd::Application.routes.draw do

  resources :projects
  match "/" => "home#index"

end
