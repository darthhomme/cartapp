Rails.application.routes.draw do

  devise_for :users

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

  get '/users/sign_out'
  get '/users/sign_in'

  resources :products
  root 'page#home'
  # root 'welcome#index'

  get 'page/about'

  get 'page/faqs'

  get 'page/contact'

end
