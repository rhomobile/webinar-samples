require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "Scontact" do
  it_should_behave_like "SpecHelper"
  
  before(:each) do
    settings_file = File.join('settings','settings.yml')
    settings = YAML.load_file(settings_file) if settings_file and File.exist?(settings_file)
    setup_test_for Scontact,settings[:test][:username]
    Application.authenticate(settings[:test][:username],settings[:test][:password],"")  end
  
  it "should process Scontact query" do
    result = test_query
    puts result.inspect
    test_query.length.should > 0
  end
  
  it "should process Scontact create" do
    pending
  end
  
  it "should process Scontact update" do
    pending
  end
  
  it "should process Scontact delete" do
    pending
  end
end