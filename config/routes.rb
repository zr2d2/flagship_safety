Rails.application.routes.draw do
  devise_for :users

  resources :icons, :except => :show
  resources :layers do
    resources :points
    resources :paths
    resources :polygons
    resources :crime_alerts
    resources :call_boxes
  end
  resources :cb_tests
  resources :import_tables
  post 'import_tables/:id' => 'import_tables#merge'

  get "csv/import"
  post "csv/import" => 'csv#upload'
end
