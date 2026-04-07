Rails.application.routes.draw do
  root "sessions#new"
  get  "/login",    to: "sessions#new",     as: :login
  post "/login",    to: "sessions#create"
  get  "/find-my",  to: "find_my#location", as: :find_my
  delete "/logout", to: "sessions#destroy", as: :logout
end
