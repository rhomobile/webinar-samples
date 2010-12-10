Ext.ns('contact', 'Ext.ux');

// model field definition
Ext.regModel('Contact', {
    fields: ['name','phone','email','id', 'account_id']
});

contact.DataStore = new Ext.data.JsonStore({
    autoDestroy: true,
    storeId: 'myStore',

   model: 'Contact',
   sorters: 'name',
   getGroupString : function(record) {
       return record.get('name')[0];
   },
proxy: {
    type: 'ajax',
    url: '/app/Scontact/alljson',
    reader: {
        type: 'json',
    root: 'contacts',
        idProperty: 'id'
    }
},
  idProperty: 'id',
});

contact.DataStore.load();



contact.ContactList = new Ext.List({
    itemTpl: '<div class="contact2"><strong>{name}</strong></div>',
    selModel: {
        mode: 'SINGLE',
        allowDeselect: false
    },
    grouped: true,
    indexBar: true,
	listeners: {
		itemtap: function(view, index, item, e  ){ 
				contact.DetailForm.user = view.store.data.items[index];
				contact.FormPanel.loadModel(contact.DetailForm.user);
				contact.DetailForm.account = account.DataStore.findRecord('id',contact.DetailForm.user.data.account_id)
				contact.AccountPanel.loadModel(contact.DetailForm.account);
		 }
	},


    store: contact.DataStore,
	width:225,
	height: '100%'
	

});



contact.DetailForm = {
    scroll: false,
    url   : '/app/Scontact/update',
    standardSubmit : false,
    items: [
        {
            xtype: 'fieldset',
            title: 'Contact Details',
            instructions: 'Please enter the information above.',
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
                xtype: 'emailfield',
                name : 'email',
                label: 'Email',
                placeHolder: 'john@example.com',
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

contact.FormPanel = new Ext.form.FormPanel(Ext.apply(contact.DetailForm,{
	width: 400
}));

contact.AccountPanel = new Ext.form.FormPanel(Ext.apply(account.DetailForm,{
	width: 400
}));

contact.SaveButton = new Ext.Button({
    text: 'Save changes',
	ui: 'confirm',
	margin: '0 0 0 100',
	width: 200,
    iconMask: true,
    handler: function() {
        if(contact.DetailForm.user){
            contact.FormPanel.updateRecord(contact.DetailForm.user, true);
			setTimeout(function(){rho_sync();},250);
        }
        contact.FormPanel.submit({
            waitMsg : {message:'Submitting', cls : 'demos-loading'}
        })
	}
});

contact.DetailPanel = new Ext.Panel({
	id: 'contactdetail',
	width: '100%',
	height: '100%',
	cls: 'detailpanel',
	items: [contact.FormPanel, contact.SaveButton, contact.AccountPanel]

});


contact.Page = new Ext.Container({
	layout: {
		type: 'hbox',
		align: 'stretch'
	},
	items: [contact.ContactList,contact.DetailPanel]
});