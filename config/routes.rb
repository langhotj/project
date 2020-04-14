Rails.application.routes.draw do
    get 'welcome/index'

    resources :persons
    root 'persons#index'
    get "/persons/new", to:"persons#new", as:"people"
    post "persons/new", to:"persons#create"
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


    get "api/index", to:"api#index", defaults:{format: "json"}
    get "api/show", to: "api#show", defaults:{format: "json"}
end

