Ext.ns('feed', 'Ext.ux');

// model field definition
Ext.regModel('Feed', {
    fields: ['message','timestamp','timestring','creator','type','id','linktitle','link','comments']
});

feed.DataStore = new Ext.data.JsonStore({
    autoDestroy: true,
    storeId: 'myFeedStore',

   model: 'Feed',
   sorters: [
	{
		property : 'timestamp',
		direction : 'DESC'
	}
   ],
   getGroupString : function(record) {
       return record.get('timestamp')[0];
   },
proxy: {
    type: 'ajax',
    url: '/app/Feed/alljson',
    reader: {
        type: 'json',
    	root: 'feed',
        idProperty: 'id'
    }
},
  idProperty: 'id',
});

feed.DataStore.load();



feed.FeedList = new Ext.List({
    itemTpl: '<div class="feeditem"><span class="creator">{creator}: </span><span class="message">{message}</span></div>{comments}{timestring}',
    //selModel: {
    //    mode: 'SINGLE',
    //    allowDeselect: false
    //},
	disableSelection: true,
    grouped: false,
    indexBar: false,
	listeners: {
		itemtap: function(view, index, item, e  ){ 
				item_id = view.store.data.items[index].data.id;
				
				feedcomment.StatusForm.feeditem = view.store.data.items[index];
				feedcomment.FormPanel.loadModel(feedcomment.StatusForm.feeditem);
				
				feedcomment.DataStore.proxy.url = '/app/Feedcomment/alljson?feedid=' + item_id;
				feedcomment.DataStore.load();
				mainpanel.setActiveItem(1);
		 }
	},


    store: feed.DataStore,
	width: '100%',
	height: 200,
	flex: 5,
	baseCls: 'feedlist',
	plugins: [new Ext.ux.touch.ListPullRefresh({
	         listeners: {
	            'released': function(plugin,list){
	              feed.DataStore.on('load',plugin.processComplete,plugin,{single:true});
					setTimeout(function(){rho_sync();},50);
	            }
	         }
	       })]
	

});



feed.StatusForm = {
	flex: 1,
    scroll: false,
    url   : '/app/Feed/create',
    standardSubmit : false,
	baseCls: 'statusform',
    items: [
        {
            xtype: 'fieldset',
			baseCls: 'fieldin',
            defaults: {
                required: false,
                labelAlign: 'left',
                labelWidth: '35%'
            },
            items: [
            {
                xtype: 'textfield',
                name : 'message',
                label: 'My status:',
                useClearIcon: true,
                autoCapitalize : false
            }]
        }
    ],
    listeners : {
        submit : function(form, result){
            console.log('success', Ext.toArray(arguments));
        },
        exception : function(form, result){
            console.log('failure', Ext.toArray(arguments));
        }
    },

    
};

feed.FormPanel = new Ext.form.FormPanel(Ext.apply(feed.StatusForm,{
	height: 200
}));


feed.PostButton = new Ext.Button({
    text: 'Post',
	ui: 'confirm',
	margin: '0 0 0 100',
	width: 200,
    iconMask: true,
    handler: function() {
		feed.FormPanel.submit({
            waitMsg : {message:'Posting', cls : 'demos-loading'}
        })
		setTimeout(function(){rho_sync();},250);
	}
});

feed.Page = new Ext.Container({
	layout: {
		type: 'vbox',
		align: 'stretch'
	},
	items: [feed.FormPanel,feed.FeedList]
});

