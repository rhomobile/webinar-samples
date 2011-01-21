Ext.ns('feedcomment', 'Ext.ux');

var mainpanel;

// model field definition
Ext.regModel('Feedcomment', {
    fields: ['message','timestamp','timestring','creator','id']
});

feedcomment.DataStore = new Ext.data.JsonStore({
    autoDestroy: true,
    storeId: 'myFeedStore',

   model: 'Feedcomment',
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
    url: '/app/Feedcomment/alljson',
    reader: {
        type: 'json',
    	root: 'feedcomment',
        idProperty: 'id'
    }
},
  idProperty: 'id',
});

feedcomment.DataStore.load();



feedcomment.FeedList = new Ext.List({
    itemTpl: '<div class="feeditem"><span class="creator">{creator}: </span><span class="message">{message}</span></div>{comments}{timestring}',
    selModel: {
        mode: 'SINGLE',
        allowDeselect: false
    },
    grouped: false,
    indexBar: false,



    store: feedcomment.DataStore,
	width: '100%',
	height: 200,
	flex: 5,
	baseCls: 'feedcommentlist'
});



feedcomment.StatusForm = {
	flex: 1,
    scroll: false,
    url   : '/app/Feedcomment/create',
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
                name : 'comment',
                label: 'Comment: ',
                useClearIcon: true,
                autoCapitalize : false
            }, {
	                xtype: 'hiddenfield',
	                name : 'id',
	                label: 'id'
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

feedcomment.FormPanel = new Ext.form.FormPanel(Ext.apply(feedcomment.StatusForm,{
	height: 200
}));


feedcomment.PostButton = new Ext.Button({
    text: 'Post',
	ui: 'confirm',
	margin: '0 0 0 100',
	width: 200,
    iconMask: true,
    handler: function() {
		feedcomment.FormPanel.submit({
            waitMsg : {message:'Posting', cls : 'demos-loading'}
        })
		setTimeout(function(){rho_sync();},250);
	}
});

feedcomment.Page = new Ext.Panel({
	layout: {
		type: 'vbox',
		align: 'stretch'
	},
	items: [feedcomment.FeedList,feedcomment.FormPanel],
	dockedItems: [
	{
		xtype: 'toolbar',
		dock: 'bottom',
		items: [
		{
			text: 'Back',
			handler: function() {
				mainpanel.setActiveItem(0);
			}
		}
		]
	}
	]
});


