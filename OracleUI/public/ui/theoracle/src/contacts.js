Ext.regModel('Contact', {
    fields: [
        {name: 'index',       type: 'int'},
        {name: 'handle',     	type: 'string'},
        {name: 'position', 		type: 'string'},
        {name: 'firstName',    	type: 'string'},
        {name: 'lastName',      type: 'string'},
        {name: 'type',     		type: 'string'},
        {name: 'workPhone',    	type: 'string'},
        {name: 'cellPhone',   	type: 'string'},
        {name: 'email',     	type: 'string'},
        {name: 'address',    	type: 'string'},
        {name: 'city',     		type: 'string'},
        {name: 'state',   		type: 'string'},
        {name: 'postalCode',   	type: 'string'},
        {name: 'lastVisited',   type: 'datetime'},
        {name: 'description',   type: 'string'}
    ]
});

oracle.ListStore = new Ext.data.JsonStore({
    autoDestroy: true,
    storeId: 'myStore',

   model: 'Contact',
   sorters: 'firstName',
   getGroupString : function(record) {
       return record.get('firstName')[0];
   },
proxy: {
    type: 'ajax',
    url: '/app/Render/alljson',
    reader: {
        type: 'json',
    root: 'contacts',
        idProperty: 'handle'
    }
},
  idProperty: 'handle',
});

oracle.ListStore.load();  

oracle.SelectContact = function(contact)
{	
	var $par=$(contact).parent();
	$par.children('.placed-selected').addClass('placed');
	$par.children('.placed-selected').removeClass('placed-selected');
	
  oracle.List.selectedContact = contact;
  
  $('#placeable > div').removeClass('selected');
  $(contact).addClass('selected');
  contactDetailsForm.contact = oracle.ListStore.findRecord('handle', contact.id);

  oracle.Profile.loadModel(contactDetailsForm.contact);

  oracle.Network.build(contact.id);
}

oracle.List = new Ext.Panel ({
  title: 'Contacts',
  cls: 'contacts',
  showingNetworkPopup: false,
  selectedContact: null,
  
  randomContactSet: function() {
    var num = Math.floor(Math.random()*6) + 2;
    var numRecords = oracle.ListStore.getCount();
    var contacts = [];
    
    for(i = 0; i < num; i++) {
			contacts[i] = oracle.ListStore.findRecord('index', Math.floor(Math.random()*numRecords)).data;
		}
		
		return contacts;
  },
  
  showNetworkPopup: function() {
    if(this.selectedContact == null) {
      return false;
    }
    
    if(this.showingNetworkPopup) {
      this.networkPopup.destroy();
      this.showingNetworkPopup = false;
    } else {
      this.networkPopup = new Ext.Panel({
          floating: true,
          modal: false,
          centered: true,
          width: 300,
          styleHtmlContent: true,
          cls: 'network-popup',
          items: {
            xtype: 'list',
            data: this.randomContactSet(),
            height: 200,
            tpl: '<tpl for="."><div class="contact"><strong>{firstName}</strong> {lastName}<div class="position">{position}</div></div></tpl>',
            itemSelector: 'div.contact',
            singleSelect: true,
            layout: {
                      align: 'center',
                      pack: 'center'
                  }
          }
      });

      this.networkPopup.show();
      this.showingNetworkPopup = true;
    }
  },

  items: [{
    xtype: 'list',
    store: oracle.ListStore,
    tpl: '<tpl for="."><div class="contact"><strong>{firstName}</strong> {lastName}<div class="position">{position}</div></div></tpl>',
    itemSelector: 'div.contact',
    singleSelect: true,
    grouped: true,
    indexBar: true,
    height: 706,
    width: 249,
    layout: {
        align: 'center',
        pack: 'center'
    },

    disclosure: function(record, btn, index) {
      this.popup = new Ext.Panel({
          floating: true,
          modal: false,
          centered: true,
          width: 300,
          styleHtmlContent: true,
          cls: 'contact-info',
          html: record.get('firstName') + ' ' + record.get('lastName') + '<br />' + record.get('position') +
            '<input type="hidden" id="handle" value="' + record.get('handle') + '" />' +
            '<input type="hidden" id="firstName" value="' + record.get('firstName') + '" />' +
            '<input type="hidden" id="lastName" value="' + record.get('lastName') + '" />' +
            '<input type="hidden" id="position" value="' + record.get('position') + '" />',
          dockedItems: [{
            dock: 'top',
            xtype: 'toolbar',
            cls: 'x-item-selected',
            title: record.get('firstName') + ' ' + record.get('lastName')
          }]
      });

      this.popup.showBy(btn);

      new Ext.util.Draggable(this.popup.id, {
          revert: true
      });

      new Ext.util.Droppable('placeable', {
          listeners: {
              drop: function(droppable, draggable, e) {
                  $el = $('#' + draggable.el.id);
                  if($el.find('#handle').val() != undefined) {
                    /*$('#placeable').append(	'<div id="' + $el.find('#handle') + '" class="placed" onmousedown="$(this).fadeOut(300, function() { $(this).remove(); });">' +
                                            '<div class="name">' + $el.find('#firstName').val() + ' ' + $el.find('#lastName').val() + '</div>' +
                                            '<div class="position">' + $el.find('#position').val() + '</div>' +
                                            '</div>');*/

                    $('#placeable').append(	'<div id="' + $el.find('#handle').val() + '" class="placed" onmousedown="oracle.SelectContact(this);">' +
                        '<div class="name">' + $el.find('#firstName').val() + ' ' + $el.find('#lastName').val() + '</div>' +
                        '<div class="position">' + $el.find('#position').val() + '</div>' +
                        '</div>');
                  }
                  $el.remove();
              }
          }
      });

      var hours = ['scheduleable-6am', 'scheduleable-7am', 'scheduleable-8am', 'scheduleable-9am', 'scheduleable-10am',
                 'scheduleable-11am', 'scheduleable-12pm', 'scheduleable-1pm', 'scheduleable-2pm', 'scheduleable-3pm',
                 'scheduleable-4pm', 'scheduleable-5pm', 'scheduleable-6pm', 'scheduleable-7pm'];

      $(hours).each(function(key, value) {
        new Ext.util.Droppable(value, {
            listeners: {
                drop: function(droppable, draggable, e) {
                    $el = $('#' + draggable.el.id);
                    if($el.find('#handle').val() != undefined) {
                      $('#' + droppable.el.id).append(	'<div id="' + $el.find('#handle') + '" class="placed" onmousedown="$(this).fadeOut(300, function() { $(this).remove(); });">' +
                                              '<div class="name">' + $el.find('#firstName').val() + ' ' + $el.find('#lastName').val() + '</div>' +
                                              '<div class="position">' + $el.find('#position').val() + '</div>' +
                                              '</div>');
                    }
                    $el.remove();
                }
            }
        });
      });
    },

    dockedItems: [{
      xtype: 'toolbar',
      dock: 'top',
      items: [{
        xtype: 'select',
        name: 'target',
        width: 110,
        options: [{
            text: 'Targets'
        }, {
            text: 'Earth',
            value: 'earth'
        }, {
            text: 'Moon',
            value: 'moon'
        }, {
            text: 'Mars',
            value: 'mars'
        }]
      }, {
        xtype: 'select',
        name: 'arrange',
        width: 100,
        options: [{
            text: 'Sort'
        }, {
            text: 'Name',
            value: 'name'
        }, {
            text: 'Position',
            value: 'position'
        }]
      }]
    }]
  }]
});
