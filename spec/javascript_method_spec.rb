require 'spec_helper'

class Bogon
  include Apotomo::JavascriptMethods
  def name
    "bogon-name"
  end

  def render *args
    "render-output"
  end

end


describe "integration testing" do
  describe "#animate_replace()" do
    context "JQuery" do
      before :each do
        Apotomo.js_framework = :jquery
      end

      it "should accept a css-id" do
        output = Bogon.new.instance_eval do
          animated_replace("#foobar")
        end
        output.should match /\#foobar/
      end
      it "should accept no css-id" do
        output = Bogon.new.instance_eval do
          animated_replace
        end
        output.should match /\#bogon-name/
      end

    end
  end
end