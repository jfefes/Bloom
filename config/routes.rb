Rails.application.routes.draw do

  resources :renders
  devise_for :users

  get 'admin' => 'admin#index'
  scope 'admin' do
    resources :articles, :react_components, :component_props, :page_components,
              :component_contents, :videos, :pages
  end

  root 'admin#index'

  get 'blog' => 'blog#index'
  get 'blog/:slug' => 'blog#show'

  get '/:slug', to: "render#index"
end
