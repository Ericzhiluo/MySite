Rails.application.routes.draw do

    get    'login', to: 'sessions#new'
    post   'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'

    resources :todolists do
        collection do
            get 'search'
            get 'addcolumn'
        end
        member do
            get 'follower'
        end
    end

    resources :users do
        collection do
            get 'search'
            get 'follow'
        end
        member do
            get 'unfollow'
        end
    end

    get 'pages/home'
    get 'pages/gallery'
    get 'pages/game'
    get 'pages/about'
    get 'pages/contact' 

    #match '/todolist/search', to: 'todolists#search', via: :get, as: 'search_todolist'
    #get '/todolist/search', to: 'todolists#search', as: 'search_todolist'

    #get 'todolists/index'
    #get 'todolists/destroy'
    #get '/destroy', to: 'todolists#destroy'
    #get 'todolists/add'
    #match "todolists/add" => "todolists#add", :via => :post
    #match "todolists/show" => "todolists#show", :via => :all

    # The priority is based upon order of creation: first created -> highest priority.
    # See how all your routes lay out with "rake routes".

    # You can have the root of your site routed with "root"
    # root 'welcome#index'

    # Example of regular route:
    #   get 'products/:id' => 'catalog#view'

    # Example of named route that can be invoked with purchase_url(id: product.id)
    #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

    # Example resource route (maps HTTP verbs to controller actions automatically):
    #   resources :products

    # Example resource route with options:
    #   resources :products do
    #     member do
    #       get 'short'
    #       post 'toggle'
    #     end
    #
    #     collection do
    #       get 'sold'
    #     end
    #   end

    # Example resource route with sub-resources:
    #   resources :products do
    #     resources :comments, :sales
    #     resource :seller
    #   end

    # Example resource route with more complex sub-resources:
    #   resources :products do
    #     resources :comments
    #     resources :sales do
    #       get 'recent', on: :collection
    #     end
    #   end

    # Example resource route with concerns:
    #   concern :toggleable do
    #     post 'toggle'
    #   end
    #   resources :posts, concerns: :toggleable
    #   resources :photos, concerns: :toggleable

    # Example resource route within a namespace:
    #   namespace :admin do
    #     # Directs /admin/products/* to Admin::ProductsController
    #     # (app/controllers/admin/products_controller.rb)
    #     resources :products
    #   end

    #root 'page#zombie'
    #get '/weapon', to: 'page#weapon'
    #get '/zombie', to: 'page#zombie'

    #get '/all', to: redirect('zombie')
end
