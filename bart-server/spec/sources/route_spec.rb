require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Route" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    setup_test_for Route,'testuser'
  end
  
  it "should process Route query" do
    puts "There are #{test_query.size} records"
    
    pending
  end
  
  it "should process Route create" do
    pending
  end
  
  it "should process Route update" do
    pending
  end
  
  it "should process Route delete" do
    pending
  end
end