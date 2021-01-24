Rails.application.routes.draw do
  resources :ingridients
  resources :dishes
  get '/ingridient/mycalc', to: 'ingridients#mycalc'
  post '/ingridient/new', to: 'ingridients#mycalc'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
