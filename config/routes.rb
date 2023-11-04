Rails.application.routes.draw do
  get 'armstrong_numbers', to: 'armstrong_numbers#index'
  post '/armstrong_numbers/calculate', to: 'armstrong_numbers#calculate'
  root to: 'armstrong_numbers#index'
end