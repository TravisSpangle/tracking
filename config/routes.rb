Rails.application.routes.draw do
  root to: 'landing#home'
  get 'contact', to: 'landing#contact'
end
