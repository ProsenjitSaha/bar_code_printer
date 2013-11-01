BarCodePrinter::Engine.routes.draw do
  resources :bar_codes, only: [:show] do 
    get :new_show, on: :collection
  end
end
