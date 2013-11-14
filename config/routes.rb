BarCodePrinter::Engine.routes.draw do
  resources :bar_codes, only: [:show]
end
