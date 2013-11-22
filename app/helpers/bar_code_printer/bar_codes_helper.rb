module BarCodePrinter
  module BarCodesHelper

    def bar_code_image(text)
      bar_code = Barby::Code39.new(text)
      bar_code_image = bar_code.to_png
      image_tag("data:image/png;base64,#{Base64.encode64(bar_code_image)}", class: "barcode_icon")
    end

    def master_picklist_title(text)
      str = ""
      if text
        text.first["name"].present? ? JSON.parse(text.first["name"]).each { |key, value| str << (key.capitalize + ": " + value.capitalize + "  ")} : (str << "Order ID: " + text.first["order_id"])
      end
      str
    end
  end
end
