Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :companies, only: :index do
    collection do
      get 'alphabetically'
      get 'with_modern_plan'
      get 'not_trialing'
      get 'created_last_month'
    end
  end
end
