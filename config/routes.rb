Rails.application.routes.draw do


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 会員側のルーティング設定
  scope module: :public do
    root to: "homes#top"
    get 'homes/about' => 'homes#about',as:'about'
    get 'customers/my_page' => 'customers#show'
    get 'customers/information/edit' => 'customers#edit'
    get 'customers/unsubscribe' => 'customers#unsubscribe'
    resources:items,only:[:index,:show]
    resource:customers,only:[:update]
    resources:cart_items,only:[:index,:update,:destroy,:destroy_all,:create]
    resources:orders,only:[:new,:confilm,:complete,:create,:index,:show]
    resources:addresses,only:[:index,:edit,:create,:update,:destroy]
  end
  # 管理者側のルーティング設定
  namespace :admin do
    root to: "homes#top"
    get 'homes/about' => 'homes#about',as:'about'
    resources :items,only:[:index,:new,:create,:show,:edit,:update]
    resources :genres,only:[:index,:create,:edit,:update]
    resources :customers,only:[:index,:show,:edit,:update]
    resources :orders,only:[:show,:update]
    resources :order_details,only:[:update]
  end

  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }

end
