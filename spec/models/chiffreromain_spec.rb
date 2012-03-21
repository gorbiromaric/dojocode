require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')


describe Chiffreromain do
  before (:each) do
    @chiffreromain = Chiffreromain.new
  end
  
  describe "decomposition" do
    it "devrait afficher ce tableau " do
      @chiffreromain.decomposition(300).should == [0,0,0,0,3,0,0,0,0,0,0,0]
    end 
    it "devrait afficher ce tableau " do
      @chiffreromain.decomposition(1427).should == [1,0,0,1,0,0,0,2,0,1,0,2]
    end 
    it "devrait afficher ce tableau " do
      @chiffreromain.decomposition(1500).should == [1,0,1,0,0,0,0,0,0,0,0,0]
    end 
  end
 
  describe "lechiffreromain" do
    it "devrait afficher ce tableau " do
      @chiffreromain.lechiffreromain(300).should == 'CCC'
    end 
    it "devrait afficher ce tableau " do
      @chiffreromain.lechiffreromain(1427).should == 'MCDXXVII'
    end 
    it "devrait afficher ce tableau " do
      @chiffreromain.lechiffreromain(1500).should == 'MD'
    end 
    it "devrait afficher ce tableau " do
      @chiffreromain.lechiffreromain(849).should == 'DCCCXLIX'
    end 
    
  end
 
  
end





