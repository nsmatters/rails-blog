Rails.application.routes.draw do
	
  get    'login', to: 'sessions#new'
  post   'login', to: 'sessions#create'
  delete 'logout', to: 'seesions#destroy'

  root 'home#index'

  get 'articles', to: 'front_article#index'
  get 'articles/:id', to: 'front_article#show', as: 'article'

  get 'tags', to: 'front_tag#index'
  get 'tags/:id', to: 'front_tag#show', as: 'tag'

  get 'admin', to: 'admin/admin#index'
  namespace :admin do
    resources :articles, except: :show
    resources :tags, except: :show
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
