describe "Feed" do
  #this test always fails, you really should have tests!
  
  it "should sync data" do
    SyncEngine.logout
    SyncEngine.login(Rho::RhoConfig.test_user, Rho::RhoConfig.test_password,"")
    i = 0
    while i < 10
      if SyncEngine.logged_in == 1
        puts "logged in"
        break
      end
      puts "sleeping"
      sleep 5
    end
    
    SyncEngine.logged_in.should == 1
    SyncEngine.dosync
    i = 0
    feeds = nil
    while i < 10
      feeds = Feed.find(:all)
      break if feeds and feeds.length > 0
      sleep 5
    end
    
    feeds.should_not == nil
    feeds.length.should > 0
    
  end
end