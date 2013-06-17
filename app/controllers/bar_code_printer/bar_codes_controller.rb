module BarCodePrinter
  class BarCodesController < ApplicationController

    def show
      @bar_code_value = params[:id]
      @first_line_text = params[:first_line_text] || ""
      @second_line_text = params[:second_line_text] || ""

      bar_code = Barby::Code39.new(@bar_code_value)
      @bar_code_image = bar_code.to_png
      render :show, layout: false
    end
  end
end