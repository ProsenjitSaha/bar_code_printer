Rails.application.routes.draw do

  mount BarCodePrinter::Engine => "/bar_code_printer"
end
