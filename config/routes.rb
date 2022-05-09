Rails.application.routes.draw do
  get 'events/index'
  root to: 'events#index'
  resource :webhook, :controller => 'inbox/webhook', :only => [:show,:create]
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
