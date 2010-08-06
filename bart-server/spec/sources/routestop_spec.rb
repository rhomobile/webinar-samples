require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Routestop" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    setup_test_for Routestop,'testuser'
  end
  
  it "should process Routestop query" do
    puts "There are #{test_query.size} records"
    pending
  end
  
  it "should process Routestop create" do
    pending
  end
  
  it "should process Routestop update" do
    pending
  end
  
  it "should process Routestop delete" do
    pending
  end
end