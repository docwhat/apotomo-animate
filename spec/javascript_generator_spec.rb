require 'spec_helper'

shared_examples_for "JavascriptGenerator" do
  it "should respond to #animate" do
    Apotomo.js_generator.should respond_to :animate
  end
end

describe "Apotomo.js_generator" do
  context "using Prototype" do
    before :each do
      Apotomo.js_framework = :prototype
    end

    it_behaves_like "JavascriptGenerator"
  end

  context "using Right" do
    before :each do
      Apotomo.js_framework = :right
    end

    it_behaves_like "JavascriptGenerator"
  end

  context "using JQuery" do
    before :each do
      Apotomo.js_framework = :jquery
    end

    it_behaves_like "JavascriptGenerator"
  end
end