Rails.application.routes.draw do
  root "tracker#index"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "signup", to: "users#new"
  post "signup", to: "users#create"

  post "tracker/log_lap", to: "tracker#log_lap", as: :log_lap
  delete "tracker/undo_lap", to: "tracker#undo_lap", as: :undo_lap
  delete "tracker/clear_laps", to: "tracker#clear_laps", as: :clear_laps
  post "tracker/archive_laps", to: "tracker#archive_laps", as: :archive_laps

  get "u/:share_token", to: "public#show", as: :public_tracker
end
