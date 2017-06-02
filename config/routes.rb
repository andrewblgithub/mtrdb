Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: "registrations" }

  resources :patients do
    resources :music_therapies
  end
  resources :patients do
    resources :orientations
  end
  resources :patients do
    resources :lab_results
  end
  resources :patients do
    resources :pain_scores
  end
  resources :patients do
    resources :daily_opioids
  end

  root 'patients#index'
end
