Ext.ns('index', 'Ext.ux');

Ext.setup({
    tabletStartupScreen: 'tablet_startup.png',
    phoneStartupScreen: 'phone_startup.png',
    icon: 'icon.png',
    glossOnIcon: false,

    onReady: function() {
		if(rho_logged_in() == 1) {
			rho_sync();

			mainpanel = new Ext.Panel({
						layout:"card",
						activeItem:0,
			            fullscreen: true,
			            cardSwitchAnimation: 'slide',
						scroll: false,
			            items: [feed.Page, feedcomment.Page]
			        });
			mainpanel.show();
			feed.DataStore.load();
			feed.FeedList.refresh(); 
			
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
