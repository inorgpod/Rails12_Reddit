Rails.application.routes.draw do
  devise_for :users
  resources :links do 
    member do 
      put "like", to: "links#vote"
      put "dislike", to: "links#vote"
    end
  end
  root to: "links#index"
end
