require "spec_helper"
require_relative "../exercises/factorial"

RSpec.describe "Factorial" do
  describe "factorial exercise" do
    it "returns 1 when passed the number 1" do
      expect(factorial(1)).to eq(1)
    end

    it "returns 24 when passed the number 4" do
      expect(factorial(4)).to eq(24)
    end

    it "returns 3628800 when passed the number 10" do
      expect(factorial(10)).to eq(3628800)
    end

    it "returns 1 when passed the number 0" do
      expect(factorial(0)).to eq(1)
    end

    it "returns nil when passed a negative number" do
      expect(factorial(-5)).to be_nil
    end
  end
end
