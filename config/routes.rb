Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes/about' => 'homes#about',as: 'about'
  
  devise_for :customers, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "adomin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
