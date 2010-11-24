Ext.ns('oracle', 'Ext.ux');

oracle.Network = new Ext.Container({
	layout: 'auto',
	cls: 'network',
	html: '<canvas id="network" width="773" height="400" onclick="alert(\'hello\');"></canvas>',
	zinitComponent: function() {
		var ctx = $('canvas')[0].getContext("2d");  

    ctx.fillStyle = "rgb(200,0,0)";  
    ctx.fillRect (10, 10, 55, 50);  

    ctx.fillStyle = "rgba(0, 0, 200, 0.5)";  
    ctx.fillRect (30, 30, 55, 50);
	},
	zitems: [{
		xtype: 'panel',
		floating: true,
    centered: true,
    width: 300,
    styleHtmlContent: true,
    html: 'One!',
		dockedItems: [{
        dock: 'top',
        xtype: 'toolbar',
        title: 'One!'
    }]
	}]
});

oracle.Home = new Ext.Container({
	layout: 'auto',
	cls: 'workspace',
	items: [{
		xtype: 'tabpanel',
		height: 1000,
		layout: 'fit',
		scroll: 'vertical',
		items: [{
        title: 'Day',
        html: '<div class="calendar day">' + 
							'<div id="scheduleable-6am" class="hour"><div class="label">6:00 am</div></div>' + 
							'<div id="scheduleable-7am" class="hour"><div class="label">7:00 am</div></div>' + 
							'<div id="scheduleable-8am" class="hour"><div class="label">8:00 am</div></div>' + 
							'<div id="scheduleable-9am" class="hour"><div class="label">9:00 am</div></div>' + 
							'<div id="scheduleable-10am" class="hour"><div class="label">10:00 am</div></div>' + 
							'<div id="scheduleable-11am" class="hour"><div class="label">11:00 am</div></div>' + 
							'<div id="scheduleable-12pm" class="hour"><div class="label">12:00 pm</div></div>' + 
							'<div id="scheduleable-1pm" class="hour"><div class="label">1:00 pm</div></div>' + 
							'<div id="scheduleable-2pm" class="hour"><div class="label">2:00 pm</div></div>' + 
							'<div id="scheduleable-3pm" class="hour"><div class="label">3:00 pm</div></div>' + 
							'<div id="scheduleable-4pm" class="hour"><div class="label">4:00 pm</div></div>' + 
							'<div id="scheduleable-5pm" class="hour"><div class="label">5:00 pm</div></div>' + 
							'<div id="scheduleable-6pm" class="hour"><div class="label">6:00 pm</div></div>' + 
							'<div id="scheduleable-7pm" class="hour"><div class="label">7:00 pm</div></div>' + 
							'</div>',
        cls: ''
    },
    {
        title: 'Week',
        html: 'Week schedule!',
        cls: ''
		},
		{
        title: 'Month',
        html: 'Month schedule!',
        cls: ''
		}]
	}]
});

var contactDetailsForm = {
    title: 'Contact Profile',
    xtype: 'form',
    id: 'contactProfile',
    scroll: 'vertical',
    width: 774,
    items: [{
        xtype: 'fieldset',
        instructions: 'Please enter the information above.',
        defaults: {
            // labelAlign: 'right'
        },
        items: [{
            xtype: 'textfield',
            name: 'firstName',
            label: 'First Name',
            placeHolder: 'John',
            autoCapitalize : true,
            required: true,
            showClear: true
        },
        {
            xtype: 'textfield',
            name: 'lastName',
            label: 'Last Name',
            placeHolder: 'Smith',
            autoCapitalize : true,
            required: true,
            showClear: true
        },
        {
            xtype: 'textfield',
            name: 'type',
            label: 'Type',
            placeHolder: 'Business',
            autoCapitalize : true,
            showClear: true
        },
        {
            xtype: 'textfield',
            name: 'workPhone',
            label: 'Work',
            placeHolder: '555-555-5555',
            showClear: true
        },
        {
            xtype: 'textfield',
            name: 'cellPhone',
            label: 'Cell',
            placeHolder: '555-555-5555',
            showClear: true
        },
        {
            xtype: 'textfield',
            name: 'email',
            label: 'Email',
            placeHolder: 'johnsmith@mail.com',
            showClear: true
        },
        {
            xtype: 'textfield',
            name: 'address',
            label: 'Address',
            placeHolder: '123 Main St.',
            showClear: true
        },
        {
            xtype: 'textfield',
            name: 'city',
            label: 'City',
            placeHolder: 'San Francisco',
            showClear: true
        },
        {
            xtype: 'textfield',
            name: 'state',
            label: 'State',
            placeHolder: 'CA',
            showClear: true
        },
        {
            xtype: 'textfield',
            name: 'postalCode',
            label: 'Postal Code',
            placeHolder: '94133',
            showClear: true
        },
        {
            xtype: 'textfield',
            name: 'lastVisited',
            label: 'Last Visited'
        },
        {
            xtype: 'textarea',
            name: 'description',
            label: 'Description'
        }]
    }]
}

oracle.Profile = new Ext.form.FormPanel(contactDetailsForm);

oracle.CallActivity = new Ext.Container({
	layout: 'auto',
	cls: 'workspace call-activity',
	items: [{
		xtype: 'tabpanel',
		activeItem: 0,
		height: 700,
		layout: 'fit',
		scroll: 'vertical',
		items: [
    {
        title: 'Contact Profile',
        items: oracle.Profile,
        cls: ''
		},
    {
        title: 'Accounts',
        html: 'Accounts!',
        cls: ''
		},
    {
        title: 'Licenses',
        html: 'Licenses!',
        cls: ''
		},
    {
        title: 'Network',
				contentEl: 'network-map-container',
        cls: 'network-container',
				buildNetwork: function(b, e) { alert('hello'); },
				handler: this.buildNetwork,
		},
		{
        title: 'Call History',
        html: 'Call History!',
        cls: ''
		}]
	}]
});

Ext.ux.UniversalUI = Ext.extend(Ext.Panel, {
	  fullscreen: true,
	  layout: 'card',
	  backText: 'Back',
	  useTitleAsBackText: true,
		cls: 'window',
		height: 747,
		width: 1024,
	  items: [{
			xtype: 'tabpanel',
			activeItem: 0,
			sortable: true, // Tap and hold to sort
	    ui: 'dark',
	    height: 300,
			items: [{
	        title: 'Home',
					items: oracle.Home
	    },
	    {
	        title: 'Call Activity',
					items: oracle.CallActivity,
					cls: 'workspace'
	    },
	    {
	        title: 'Detailer',
	        html: 'Tab 3',
					cls: 'workspace'
		},
	    {
	       xtype: 'button',
	       text: 'Tap to Sync with CRM On-Demand',
	       title: 'Sync',
	       handler: function(btn){
               window.location = '/app/Settings/my_sync';
           }
		}],
			dockedItems: [{
					xtype: 'tabpanel',
					height: 175,
					activeItem: 1,
					cls: 'tray',
					dock: 'bottom',
					items: [{
				      title: 'Scheduled',
				      html: 'Schedule content!',
				      cls: ''
				  },
				  {
				      title: 'Planned',
				      html: '<div id="placeable"></div>',
				      cls: ''
					}]
			}]
	  }],
    initComponent : function() {
        this.navigationPanel = oracle.List;

        this.navigationPanel.setWidth(250);

        Ext.ux.UniversalUI.superclass.initComponent.call(this);
    },

    onNavButtonTap : function() {
        this.navigationPanel.showBy(this.navigationButton, 'fade');
    },

    layoutOrientation : function(orientation, w, h) {
        if (!Ext.is.Phone) {
            if (orientation == 'portrait') {
                this.navigationPanel.hide(false);
                this.removeDocked(this.navigationPanel, false);
                if (this.navigationPanel.rendered) {
                    this.navigationPanel.el.appendTo(document.body);
                }
                this.navigationPanel.setFloating(true);
                this.navigationPanel.setHeight(400);
                this.navigationButton.show(false);
            }
            else {
                this.navigationPanel.setFloating(false);
                this.navigationPanel.show(false);
                this.insertDocked(0, this.navigationPanel);
            }
        }

        Ext.ux.UniversalUI.superclass.layoutOrientation.call(this, orientation, w, h);
    }
});

oracle.Main = {
	init : function() {
		this.ui = new Ext.ux.UniversalUI({
		  title: 'The Oracle'
		});

		//Ext.Msg.alert('Welcome to The Oracle', '', Ext.emptyFn);
		
		oracle.Network.init();
	}
};

Ext.setup({
    tabletStartupScreen: 'resources/img/tablet_startup.png',
    phoneStartupScreen: 'resources/img/phone_startup.png',
    icon: 'resources/img/icon.png',
    glossOnIcon: false,

    onReady: function() {
      oracle.Main.init();
    }
});