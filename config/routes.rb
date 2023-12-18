Rails.application.routes.draw do
  root 'projects#index'

  resources :projects do
    resources :works, only: %i[index create] do
      member do
        patch 'finish'
      end
    end
  end
end
