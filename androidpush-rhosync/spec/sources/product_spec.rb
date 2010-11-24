require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Product" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    setup_test_for Product,'testuser'
  end
  
  it "should process Product query" do
    pending
  end
  
  it "should process Product create" do
    pending
  end
  
  it "should process Product update" do
    pending
  end
  
  it "should process Product delete" do
    pending
  end
end