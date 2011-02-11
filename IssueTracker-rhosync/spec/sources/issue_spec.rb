require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Issue" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    e.com'
    Application.authenticate 'youraccount@gmail.com','yourpassword',nil
  end
  
  it "should process Issue query" do
    test_query.size.should >0
    puts md.inspect
    query_errors.should == {}
  end
  
  it "should process Issue create" do
    pending
  end
  
  it "should process Issue update" do
    pending
  end
  
  it "should process Issue delete" do
    pending
  end
end