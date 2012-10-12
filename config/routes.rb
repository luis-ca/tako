Newgulpd::Application.routes.draw do

  namespace :api do
    resources :projects  
  end
  
  match "/" => "home#index"

end
