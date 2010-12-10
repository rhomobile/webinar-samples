Ext.ns('index', 'Ext.ux');

index.MainTabs = {
    fullscreen: true,
    type: 'dark',
    sortable: true,
	width: '100%',
	height: '100%',
    items: [{
        title: 'Contacts',
        items: contact.Page,
		layout: 'fit'
    }, {
        title: 'Accounts',
        items: account.Page,
		layout: 'fit'
    }]
};

Ext.setup({
    tabletStartupScreen: 'tablet_startup.png',
    phoneStartupScreen: 'phone_startup.png',
    icon: 'icon.png',
    glossOnIcon: false,

    onReady: function() {
		if(rho_logged_in() == 1) {
			if(contact.DataStore.data.length < 1) {
				account.AccountList.setLoading(true,true);
				contact.ContactList.setLoading(true,true);
				rho_sync();
			}

        	index.Panel = new Ext.TabPanel(index.MainTabs);
			tabbar = index.Panel.child('tabbar');
			tabbar.add ({xtype: 'spacer'});
			tabbar.add ({
				text: 'Sync',
				handler: function() {
					account.AccountList.setLoading(true,true);
					contact.ContactList.setLoading(true,true);
					rho_sync();
				}
			});
			tabbar.doLayout();
		} else {
			login.LoginForm.fullscreen = true;
	        login.form = new Ext.form.FormPanel(login.LoginForm);
	        login.form.show();
		}
    }
});


function orient(){
	if (index.Panel) {
		index.Panel.setOrientation( Ext.getOrientation() , window.innerWidth, window.innerHeight );
		index.Panel.doLayout();
	}
}

Ext.EventManager.onWindowResize(function(){orient();});
