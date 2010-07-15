require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Customer" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    setup_test_for Customer,'testuser'
  end
  
  it "should process Customer query" do
    pending
  end
  
  it "should process Customer create" do
    pending
  end
  
  it "should process Customer update" do
    pending
  end
  
  it "should process Customer delete" do
    pending
  end
end