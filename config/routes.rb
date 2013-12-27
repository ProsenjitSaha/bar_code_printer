BarCodePrinter::Engine.routes.draw do
  resources :bar_codes, only: [:show] do
    collection do
      post :master_picklist
      get :item_label
    end
  end
end
