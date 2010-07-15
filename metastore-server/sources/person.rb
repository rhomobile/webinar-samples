class Person < SourceAdapter
  def initialize(source,credential)
    super(source,credential)
  end
 
  def login
    # TODO: Login to your data source here if necessary
  end
 
  def query(params=nil)
    # TODO: Query your backend data source and assign the records 
    # to a nested hash structure called @result. For example:
     @result = { 
       "1"=>{"name"=>"Acme", "age"=>"25", "location"=>"San Jose, CA"},
       "2"=>{"name"=>"Best", "age"=>"26", "location"=>"Sunnyvale, CA"},
       "3"=>{"name"=>"Foo", "age"=>"27", "location"=>"Cupertino, CA"},
     }
    
    #raise SourceAdapterException.new("Please provide some code to read records from the backend data source")
  end
 
  def sync
    # Manipulate @result before it is saved, or save it 
    # yourself using the Rhosync::Store interface.
    # By default, super is called below which simply saves @result
    super
  end
 
  def create(create_hash,blob=nil)
    # TODO: Create a new record in your backend data source
    # If your rhodes rhom object contains image/binary data 
    # (has the image_uri attribute), then a blob will be provided
    #raise "Please provide some code to create a single record in the backend data source using the create_hash"
  end
 
  def update(update_hash)
    # TODO: Update an existing record in your backend data source
    #raise "Please provide some code to update a single record in the backend data source using the update_hash"
  end
 
  def delete(object_id)
    # TODO: write some code here if applicable
    # be sure to have a hash key and value for "object"
    # for now, we'll say that its OK to not have a delete operation
    # raise "Please provide some code to delete a single object in the backend application using the hash values in name_value_list"
  end
 
  def logoff
    # TODO: Logout from the data source if necessary
  end
  
  def metadata
    
    objectlink = { :type => "linkli", :uri => "{{showuri}}", :text => "{{name}}" }
    list = { :type => "list", :children => [objectlink], :repeatable => "{{@people}}" }
    content = { :type => "content", :children => [ list ] }
    toolbar = { :type => "toolbar", :lefturi => "/app", :righturi => "/app/Person/new", :lefttext => "Home", :righttext => "New"}
    title = { :title => "Meta People", :type => "title"}
    index = { :title => "index", :type => "view", :children => [title, toolbar, content]}
    
      ## NEW

      ###Shared with NEW and EDIT
      ageinput = { :type => 'labeledinputli',
                   :label => 'Age',
                   :name => 'person[age]',
                   :value => '{{@person/age}}' }

      nameinput = { :type => 'labeledinputli',
                    :label => 'Name',
                    :name => 'person[name]',
                    :value => '{{@person/name}}' }
      ###End Shared

      newlist = { :type => 'list',
               :children => [ nameinput, ageinput ] }

      newsubmit = { :type => 'submit',
                    :value => 'Create' }

      newhiddenid = { :type => 'hidden',
                      :name => 'id',
                      :value => '{{@person/object}}' }

      newform = { :type => 'form',
                  :action => '/app/Person/create',
                  :method => 'POST',
                  :children => [newhiddenid, newlist, newsubmit] }

      newcontent = { :type => 'content',
                     :children => [ newform ] } 

      newtoolbar = { :type => 'toolbar',
                     :lefturi => '/app/Person',
                     :lefttext => 'Cancel',
                     :leftclass => 'backButton',
                     :righturi => '/app',
                     :righttext => 'Home' }

      newtitle = { :title => 'New',
                   :type => 'title' }

      new = { :title => 'index',
              :type => 'view',
              :children => [newtitle,newtoolbar,newcontent] }
      ##END NEW

      ##SHOW
      showage = { :type => 'labeledvalueli',
                  :label => 'Age',
                  :value => '{{@person/age}}' }

      showname = { :type => 'labeledvalueli',
                   :label => 'Name',
                   :value => '{{@person/name}}' }

                   showloc = { :type => 'labeledvalueli',
                                :label => 'Location',
                                :value => '{{@person/location}}' }


      showlist = { :type => 'list',
               :children => [ showname, showage  ] }


      showcontent = { :type => 'content',
                     :children => [ showlist ] } 

      showtoolbar = { :type => 'toolbar',
                     :lefturi => 'index',
                     :lefttext => 'Back',
                     :leftclass => 'backButton',
                     :righturi => 'edit',
                     :righttext => 'Edit' }

      showtitle = { :title => '{{@person/name}}',
                    :type => 'title' }

      show = { :title => 'view',
              :type => 'view',
              :children => [showtitle,showtoolbar,showcontent] }
      ## END SHOW

      ## edit

      editsubmit = { :type => 'submit',
                    :value => 'Update' }


      #NOTE: see that we reuse newhiddenid and newlist components
      editform = { :type => 'form',
                  :action => '/app/Person/update',
                  :method => 'POST',
                  :children => [newhiddenid, newlist, editsubmit] }

      editcontent = { :type => 'content',
                     :children => [ editform ] } 

      edittoolbar = { :type => 'toolbar',
                     :lefturi => 'Person',
                     :lefttext => 'Cancel',
                     :leftclass => 'backButton',
                     :righturi => '{{@person/deleteuri}}',
                     :righttext => 'Delete' }

      edit = { :title => 'index',
              :type => 'view',
              :children => [showtitle,edittoolbar,editcontent] }
      ## END UPDATE

      {'index' => index, 'new' => new, 'show' => show, 'edit' => edit }.to_json
    
  end
end