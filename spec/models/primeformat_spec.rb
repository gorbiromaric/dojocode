require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')


describe Primeformat do
  before (:each) do
    @prime = Primeformat.new
  end
  describe "calculate" do
    it "devrait calculer pour 2" do
      @prime.calculate(2).should == [2]
    end
    it "devrait calculer pour 3" do
      @prime.calculate(3).should == [3]
    end
    it "devrait calculer pour 4" do
      @prime.calculate(4).should == [2,2]
    end
    it "devrait calculer pour 5" do
      @prime.calculate(5).should == [5]
    end
    it "devrait calculer pour 6" do
      @prime.calculate(6).should == [2,3]
    end
  end
  
end





