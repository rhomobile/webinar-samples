require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Feedcomment" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    setup_test_for Feedcomment,'brian@rhomobile.com'
    Application.authenticate('brian@rhomobile.com','',"")
  end
  
  it "should process Feedcomment query" do
    pending
  end
  
  it "should process Feedcomment create" do
    post =  {
        "feedid" => "0D550000005vpa9CAA",
        "comment" => "spec test comment"
      }
    @ss.adapter.login
    new_product_id = test_create(post)
    create_errors.should == {}
  end
  
  it "should process Feedcomment update" do
    pending
  end
  
  it "should process Feedcomment delete" do
    pending
  end
end