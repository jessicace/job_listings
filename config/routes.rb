Rails.application.routes.draw do
  root 'home#index'
  resources :jobs
  

  get 'candidates/show' => 'candidates#show'
  get 'calculations/perform' => 'calculations#perform'
  get 'sessions/how_long' => 'sessions#how_long'

end
