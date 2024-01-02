Rails.application.routes.draw do
  get "byebug", to: "byebug#index"
  get "hello", to: "hello#index"
end
