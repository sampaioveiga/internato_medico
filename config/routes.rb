InternatoMedico::Application.routes.draw do
    resources :users,           except: [ :show, :destroy ]
    resources :sessions,        except: [ :show ]
    resources :healthcareunits, except: [ :show ]
    resources :services,        except: [ :show, :destroy ]
    resources :organizations,   except: [ :show, :destroy ]
    resources :supervisors,     except: [ :show, :destroy ]
    resources :fyoptions,       except: [ :show, :destroy ]
    resources :internship_names
    resources :interns do
        resources :internships
        resources :firstyears do
            resources :fymedicines
            resources :fyprimaries
            resources :fycirurgies
            resources :fypediatries
            resources :fychoices
        end
    end
    match '/dashboard', to: 'static_pages#index',     via:'get'
    match '/search',    to: 'interns#search',   via: 'get'
    match '/login',     to: 'sessions#new',     via: 'get'
    match '/logout',    to: 'sessions#destroy', via: 'get'
    match '/signin',    to: 'users#new',        via: 'get'
    root 'static_pages#index'

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
end
