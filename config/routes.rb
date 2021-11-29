# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :hands, only: [:index, :show, :create, :destroy, :update]
  end

  root 'static_pages#root'

end
