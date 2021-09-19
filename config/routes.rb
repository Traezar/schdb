Rails.application.routes.draw do
  scope :admin do
    resources :products 
  end
  resources :products, only: [:index,:show]
end

