require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Saccount" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    setup_test_for Saccount,'brian@rhomobile.com'
  end
  
  it "should process Saccount query" do
    Application.authenticate('brian@rhomobile.com','password123',"")
    result = test_query
    puts test_query.inspect
    test_query.length.should > 0
    
  end
  
  it "should process Saccount create" do
    pending
  end
  
  it "should process Saccount update" do
    pending
  end
  
  it "should process Saccount delete" do
    pending
  end
end