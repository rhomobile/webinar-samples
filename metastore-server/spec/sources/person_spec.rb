require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Person" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    setup_test_for Person,'testuser'
  end
  
  it "should process Person query" do
    pending
  end
  
  it "should process Person create" do
    pending
  end
  
  it "should process Person update" do
    pending
  end
  
  it "should process Person delete" do
    pending
  end
end