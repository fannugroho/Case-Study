Rails.application.routes.draw do
  get 'stock/index'
  get '/index' => 'home#index'
  get '/stock' => 'stock#index'
  get '/kategori' => 'home#kategori'
  get '/about' => 'home#about'
  get '/' => 'home#index'
  get '/stock/detail/:id' => 'stock#detail'
  get '/stock/input' => 'stock#input'
  post '/stock/create' => 'stock#create'

  get '/stock/edit/:id' => 'stock#edit'
  post '/stock/update/:id' => 'stock#update'
  get '/stock/delete/:id' => 'stock#delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/home", to: "home#index"
  root "home#index"
end
