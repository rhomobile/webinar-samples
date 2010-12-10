Ext.ns('account', 'Ext.ux');

// model field definition
Ext.regModel('Account', {
    fields: ['name','phone','website','id']
});

account.DataStore = new Ext.data.JsonStore({
    autoDestroy: true,
    storeId: 'accountStore',

   model: 'Account',
   sorters: 'name',
   getGroupString : function(record) {
       return record.get('name')[0];
   },
proxy: {
    type: 'ajax',
    url: '/app/Saccount/alljson',
    reader: {
        type: 'json',
    root: 'accounts',
        idProperty: 'id'
    }
},
  idProperty: 'id',
});

account.DataStore.load();


account.AccountList = new Ext.List({
    itemTpl: '<div class="account"><strong>{name}</strong></div>',
    selModel: {
        mode: 'SINGLE',
        allowDeselect: false
    },
    grouped: true,
    indexBar: true,

	listeners: {
		itemtap: function(view, index, item, e  ){ 
				account.DetailForm.user = view.store.data.items[index];
				account.FormPanel.loadModel(account.DetailForm.user);
		 }
	},

    store: account.DataStore,
	width:250,
	height: '100%'
	

});


account.DetailForm = {
    scroll: false,
    url   : '/app/Saccount/update',
    standardSubmit : false,
    items: [
        {
            xtype: 'fieldset',
            title: 'Account Details',
            instructions: '',
            defaults: {
                required: true,
                labelAlign: 'left',
                labelWidth: '30%'
            },
            items: [
            {
                xtype: 'textfield',
                name : 'name',
                label: 'Name',
                useClearIcon: true,
                autoCapitalize : false
            }, {
	            xtype: 'textfield',
	            name : 'phone',
	            label: 'Phone',
	            useClearIcon: true,
	            autoCapitalize : false
	        }, {
                xtype: 'textfield',
                name : 'website',
                label: 'Website',
                placeHolder: 'http://blah.com',
                useClearIcon: true
            }, 	{
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

account.FormPanel = new Ext.form.FormPanel(Ext.apply(account.DetailForm,{
	width: 500
}));

account.SaveButton = new Ext.Button({
    text: 'Save changes',
	ui: 'confirm',
	margin: '0 0 0 150',
	width: 200,
    iconMask: true,
	handler: function() {
        if(account.DetailForm.user){
            account.FormPanel.updateRecord(account.DetailForm.user, true);
			setTimeout(function(){rho_sync();},250);
        }
        account.FormPanel.submit({
            waitMsg : {message:'Submitting', cls : 'demos-loading'}
        })
    }
});

account.DetailPanel = new Ext.Panel({
	id: 'accountdetail',
	width: '100%',
	height: '100%',
	cls: 'detailpanel',
	items: [account.FormPanel, account.SaveButton]
});


account.Page = new Ext.Container({
	layout: {
		type: 'hbox',
		align: 'stretch'
	},
	items: [account.AccountList,account.DetailPanel]
});