require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Feed" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do

    settings_file = File.join('settings','settings.yml')
    settings = YAML.load_file(settings_file) if settings_file and File.exist?(settings_file)
    setup_test_for Feed,settings[:test][:username]
    Application.authenticate(settings[:test][:username],settings[:test][:password],"")
  end
  
  it "should process Feed query" do
    result = test_query
    puts test_query.inspect
    result.length.should > 0
    result["0D550000006V5CECA0"].should_not == nil
    result["0D550000006V5CECA0"]["type"].should == "TrackedChange"
  end
  
  it "should process Feed create" do
    post = {
      'message' => 'spec test generated message'
    }
    @ss.adapter.login

    test_create(post)
    create_errors.should == {}

  end
  
  it "should process Feed update" do
    pending
  end
  
  it "should process Feed delete" do
    pending
  end
end