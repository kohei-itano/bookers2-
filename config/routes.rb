Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  root 'homes#index'
  get "home/about" => "homes#about"
  devise_for :users

# フォロー機能
	resources :users do
		resource :relationships, only: [:create, :destroy]
		get :follows, on: :member
		get :followers, on: :member
	end

	resources :books do
		# いいね機能
	  resource :favorites, only: [:create, :destroy]
	  # コメント機能 resources 複数コメントをid判別している
	  resources :book_comments, only: [:create, :destroy]
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
