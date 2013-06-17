require 'spec_helper'

describe BarCodePrinter::BarCodesController do
  describe "GET show" do
    let(:sku) { "CHA00001" }
    it "should render the barcode when invoked" do
      get :show, {:id => sku, :use_route => :bar_code_printer}
      assigns(:first_line_text).should == ""
      assigns(:second_line_text).should == ""
      assigns(:bar_code_value).should == sku
      response.should be_success
    end

    it "should render the barcode when invoked with the first line as a query parameter" do
      first_line = SecureRandom.hex(5)
      get :show, {:id => sku, :use_route => :bar_code_printer, :first_line_text => first_line}
      assigns(:first_line_text).should == first_line
      assigns(:second_line_text).should == ""
      assigns(:bar_code_value).should == sku
      response.should be_success
    end

    it "should render the barcode when invoked with the first and second lines as query parameters" do
      first_line = SecureRandom.hex(5)
      second_line = SecureRandom.hex(5)
      get :show, {:id => sku, :use_route => :bar_code_printer, :first_line_text => first_line, :second_line_text => second_line }
      assigns(:first_line_text).should == first_line
      assigns(:second_line_text).should == second_line
      assigns(:bar_code_value).should == sku
      response.should be_success
    end
  end
end