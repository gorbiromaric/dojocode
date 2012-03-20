require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

class Primeformat

  def calculate(number)
    @number = number
    res = []
    diviseur = 2
    while (@number >1)  do   
  
      while((@number % diviseur) == 0) do
        @number = @number / diviseur
        res.push(diviseur)
      end
      diviseur = diviseur + 1
    end 
   return res
  end
  
end 

describe Primeformat do
  before (:each) do
    @prime = Primeformat.new
  end
  describe "calculate" do
    it "devrait calculer pour 2" do
      @prime.calculate(2).should == [2]
    end
    it "devrait calculer pour 3" do
      @prime.calculate(2).should == [3]
    end
    it "devrait calculer pour 4" do
      @prime.calculate(2).should == [2,2]
    end
    it "devrait calculer pour 5" do
      @prime.calculate(2).should == [5]
    end
  end
  
end





