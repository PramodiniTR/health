Rails.application.routes.draw do
  resources :clients 
  resources :projects
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
             default_url_options :host => "example.com"
              
end
