Rails.application.routes.draw do
  Rails.application.routes.draw do
    devise_for :users,
                path: '',
                path_names: {
                  sign_in: 'login',
                  sign_out: 'logout',
                  registration: 'signup'
                }
    end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :courses do
        resources :sections
      end
    end
  end
end

