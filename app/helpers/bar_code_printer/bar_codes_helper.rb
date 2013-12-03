module BarCodePrinter
  module BarCodesHelper

    def bar_code_image(text)
      bar_code = Barby::Code39.new(text)
      bar_code_image = bar_code.to_png
      image_tag("data:image/png;base64,#{Base64.encode64(bar_code_image)}", class: "barcode-icon")
    end

    def time_format(time)
      Time.parse(time).in_time_zone("Pacific Time (US & Canada)").strftime("%m/%d/%Y at %I:%M%P") if time.present?
    end
  end
end
