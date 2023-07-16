Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :blogs, only: [:index, :show]

  # Defines the root path route ("/")
  get 'download_resume', to: 'pages#download_resume', as: :download_resume
  get 'testimonials', to: 'pages#testimonials', as: :testimonials
  get 'portfolio', to: 'pages#portfolio', as: :portfolio
  root "pages#home"
end
