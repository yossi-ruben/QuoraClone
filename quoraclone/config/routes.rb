Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :questions do 
  	resources :answers
  end

  post "questions/:question_id/answers" => "questions#add_answer", :as => "add_answer"

  post "questions/questions_query" => "questions#questions_query", :as => "questions_query"

  resources :users
  get "log_out" => "users#destroy", :as => "log_out"
  get "log_in" => "users#login", :as => "log_in"
  post "check_log_in" => "users#checklogin", :as => "checklogin"

  root 'questions#index'

end

# What is the purpose of the sabbath?