Rails.application.routes.draw do
  Rails.application.routes.draw do
    devise_for :users,
                path: '',
                path_names: {
                  sign_in: 'login',
                  sign_out: 'logout',
                  registration: 'signup'
                },
                controllers: {
                  sessions: 'sessions',
                  registrations: 'registrations'
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

# 9e6fe9057fad1d348ef5bb4dcf7d34828f8aed27e792a5531b85d1298b3d405b995a0e48ee481c90fc61e142ea56fd2e2f5f9954a5152c79dd0ca897bbf7bd6a