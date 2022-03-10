Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get('/',{to: "welcome#home", as: :root})
  get('/about',{to: "welcome#about"})
  get('/contact',{to: "welcome#contact"})
  post("/contact_submit",{to:"welcome#thankyou",as: :contact_submit})
  get("/new_bill",{to:"bill#new_bill"})
  get("/bill", {to: 'bill#result', as: :bill})
  get("/admin/panel", {to: 'welcome#admin'})
  # get("/products",to:"products#index")
  # get("/products/new",to:"products#new",as: :new_product)
  # post("/products",to:"products#create")

  # get("/products/:id",to:"products#show",as: :product)
  # delete("/products/:id",to:"products#destroy")

  # get("/products/:id/edit",to:"products#edit",as: :edit_product)
  # patch("/products/:id",to:"products#update")

  resources :products do
    resources :reviews, only: [:create, :destroy]
  end
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
end
