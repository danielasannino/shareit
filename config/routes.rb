Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts
  end

  resources :users, only: [:new, :create]
  post 'users/confirm' => 'users#confirm'

  resources :questions

  resources :advertisements

  get 'about' => 'welcome#about'

  get 'faq' => 'welcome#faq'

  get 'contact' => 'welcome#contact'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
