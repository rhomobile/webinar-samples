require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Station" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    setup_test_for Station,'testuser'
  end
  
  it "should process Station query" do
    puts "There are #{test_query.size} records"
    pending
  end
  
  it "should process Station create" do
    pending
  end
  
  it "should process Station update" do
    pending
  end
  
  it "should process Station delete" do
    pending
  end
end