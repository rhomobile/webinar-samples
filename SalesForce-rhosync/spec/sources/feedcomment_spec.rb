require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Feedcomment" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    settings_file = File.join('settings','settings.yml')
    settings = YAML.load_file(settings_file) if settings_file and File.exist?(settings_file)
    setup_test_for Feedcomment,settings[:test][:username]
    Application.authenticate(settings[:test][:username],settings[:test][:password],"")
  end
  
  it "should process Feedcomment query" do
    result = test_query
    puts test_query.inspect
    result.length.should > 0
  end
  
  it "should process Feedcomment create" do
    post =  {
        "feedid" => "0D550000006V5CECA0",
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