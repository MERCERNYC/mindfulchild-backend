Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :newsletters
      
        resources :categories do
          resources :activities
        end 

    end 
  end 
  
end
