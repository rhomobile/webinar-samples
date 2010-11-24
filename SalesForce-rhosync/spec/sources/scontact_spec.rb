require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Scontact" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    setup_test_for Scontact,'brian@rhomobile.com'
  end
  
  it "should process Scontact query" do
    Application.authenticate('brian@rhomobile.com','password123',"")
    result = test_query
    puts result.inspect
    test_query.length.should > 0
  end
  
  it "should process Scontact create" do
    pending
  end
  
  it "should process Scontact update" do
    pending
  end
  
  it "should process Scontact delete" do
    pending
  end
end