Rails.application.routes.draw do
  get 'users' => 'admin#users'
  post 'edit_user' => 'admin#edit_user'
  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  post 'edit_line_item' =>'cart#edit_line_item'

  get 'delete_line_item' => 'cart#delete_line_item'



  devise_for :users
	root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
