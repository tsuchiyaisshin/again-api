Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace 'v1' do
        resources :users do
            collection{ get "userId" }
        end
        resources :trainers do
            collection{ get "search" }
        end
        resources :training_logs do
            collection{
                get "search"
                get "log_data"
            }
        end
        resources :events do
            collection{ get "muscles" }
        end
    end
end
