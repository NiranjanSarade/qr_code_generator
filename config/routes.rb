Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#qr_code_generator"

  controller :pages do
     get :qr_code_generator
     get :qr_code_download
  end
end
