# Put your extension routes here.

map.namespace :admin do |admin|
  admin.resources :suppliers
  admin.resources :products do |product|
    product.resources :suppliers, :member => {:select => :post, :remove => :post}, :collection => {:available => :post, :selected => :get}
  end
end