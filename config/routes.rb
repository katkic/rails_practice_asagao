Rails.application.routes.draw do
  root 'top#index'
  get 'about' => 'top#about', as: 'about'

  # (1..18).each do |n|
  #   get "lesson/step#{n}(/:name)" => "lesson#step#{n}", as: "step#{n}"
  # end

  resources :members do
    get 'search', on: :collection
  end
end
