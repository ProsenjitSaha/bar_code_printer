BarCodePrinter::Engine.routes.draw do
  resources :bar_codes, only: [:show] do 
    get :master_picklist, on: :collection
  end
end
