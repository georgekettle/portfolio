Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'download_resume', to: 'pages#download_resume', as: :download_resume
  get 'testimonials', to: 'pages#testimonials', as: :testimonials
  root "pages#home"
end
