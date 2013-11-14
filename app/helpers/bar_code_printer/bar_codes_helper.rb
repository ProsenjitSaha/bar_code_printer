module BarCodePrinter
  module BarCodesHelper

    def bar_code_image(text)
      bar_code = Barby::Code39.new(text)
      bar_code_image = bar_code.to_png
      image_tag("data:image/png;base64,#{Base64.encode64(bar_code_image)}", class: "barcode_icon")
    end
  end
end
