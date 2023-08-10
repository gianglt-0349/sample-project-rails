# frozen_string_literal: true

Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root 'static_pages#home'

    get 'static_pages/help'
    get 'static_pages/about'
    get 'static_pages/contact'

    resources :microposts
    resources :users
  end
end
