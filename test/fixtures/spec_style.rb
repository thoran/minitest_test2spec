require 'minitest/autorun'

describe "Class methods" do

  before do
  end

  describe "something0" do
    it "works" do
      expect(found).must_equal expected
    end
  end

  describe "something1" do
    it "works" do
      expect('this').must_match /this/
    end
  end

  describe "something2" do
    it "works" do
      expect(nil).must_be_nil
    end
  end

  after do
  end

end
