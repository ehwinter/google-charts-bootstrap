Shuttle::Application.routes.draw do
  resources :accesses

  resources :challenges

  resources :faqs

  resources :trips

  resources :devices

  resources :transport_canada_registrations

  resources :otto_view_raw_trips

  get "pages/about"
  get "pages/about_summerhill_impact"
  get "pages/baseline"
  get "pages/challenge"
  get "pages/contact"
  get "pages/drive_better"
  get "pages/drive_less"
  get "pages/faq"
  get "pages/how_shuttle_works"
  get "pages/how_shuttle_works_detail"
  get "pages/install"
  get "pages/payout"
  get "pages/privacy"
  get "pages/rewards"
  get "pages/rewards_detail"
  get "pages/supporters"
  get "pages/survey"
  get "pages/training"
  get "pages/typography"           # testing only
  get "pages/value_of_shuttle"
  get "pages/why_shuttle"
  get "pages/why_shuttle_detail"


  resources :posts

  resources :snippets

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
