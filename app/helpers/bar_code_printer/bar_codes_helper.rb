module BarCodePrinter
  module BarCodesHelper

    def bar_code_image(text)
      bar_code = Barby::Code39.new(text)
      bar_code_image = bar_code.to_png
      image_tag("data:image/png;base64,#{Base64.encode64(bar_code_image)}", class: "barcode-icon")
    end

    def time_format(time)
      t = time.to_date
      t.strftime("%m/%d/%Y") + " " + t.strftime("at %I:%M%p") if t
    end
  end
end
