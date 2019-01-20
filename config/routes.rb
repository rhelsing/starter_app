Rails.application.routes.draw do
  get 'admin/index'
  root 'home#index'
  get 'home/index'
  devise_for :users

  get '/admin', to: 'admin#index'
  scope :admin do
    # resources :teams,
    #           :dashboards,
    #           :team_memberships,
    #           :personal_product_accesses,
    #           :team_product_accesses,
    #           :panels,
    #           :feed_outputs,
    #           :endpoint_feeds,
    #           :api_feeds
  end
end
