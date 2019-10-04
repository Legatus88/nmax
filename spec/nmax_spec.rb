require_relative '../lib/nmax.rb'

RSpec.describe Nmax do

  describe "when input incorrect" do
    it "raises IOError" do
      expect{ Nmax.return_biggest_numbers(2) }.to raise_error(IOError)
    end

    it "raises IOError" do
      expect{ Nmax.return_biggest_numbers('awfawf') }.to raise_error(IOError)
    end
  end

  describe "when input correct" do
    before(:all) do
      STDIN = StringIO.new("123d.,tt /n4234sgrs..,;lj\n 83940sefsf,f,.")
    end

    it "has a version number" do
      expect(Nmax::VERSION).not_to be nil
    end

    it "raises ArgumentError" do
      expect{ Nmax.return_biggest_numbers(0) }.to raise_error(ArgumentError)
    end

    it "raises ArgumentError" do
      expect{ Nmax.return_biggest_numbers('qwerty') }.to raise_error(ArgumentError)
    end

    it "returns two numbers" do
      expect(Nmax.return_biggest_numbers(2)).to eq([83940, 4234])
    end
  end
end
