require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Feed" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    setup_test_for Feed,'brian@rhomobile.com'
    Application.authenticate('brian@rhomobile.com','',"")
  end
  
  it "should process Feed query" do
    result = test_query
    puts test_query.inspect
    test_query.length.should > 0
  end
  
  it "should process Feed create" do
    post = {
      'message' => 'spec test generated message'
    }
    @ss.adapter.login
    new_product_id = test_create(post)
    create_errors.should == {}

  end
  
  it "should process Feed update" do
    pending
  end
  
  it "should process Feed delete" do
    pending
  end
end