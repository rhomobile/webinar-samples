oracle.Network = new Object({
	nodeLabelBasePosition: { x: 42, y: 9 },
	firstColPosition: 20,
	secondColPosition: 300,
	thirdColPosition: 540,
	canvasSize: { width: 763, height: 395 },
	nodeImage: 'resources/img/network-node.png',
	nodeSize: { width: 167, height: 32 },
	groupNodeImage: 'resources/img/network-group-node.png',
	numRecords: oracle.ListStore.getCount(),
	canvasHeight: $('canvas').height(),
	contact: null,
	secondaryContacts: [],
	ctx: null,

	init: function() {
	  $('body').append('<div id="network-map-container" width="' + this.canvasSize['width'] + '" height="' + this.canvasSize['height'] + '"></div>');
		$('#network-map-container').append('<canvas id="network-map" width="' + this.canvasSize['width'] + '" height="' + this.canvasSize['height'] + '"></canvas>');
		$('#network-map-container').click(function() { oracle.List.showNetworkPopup(); });
	},
	
	build: function(contact_handle) {
		this.ctx = $('canvas')[0].getContext("2d");  
		this.ctx.clearRect(0, 0, this.canvasSize['width'], this.canvasSize['height']);
		this.numRecords = oracle.ListStore.getCount();
		
		// Define primary contact
		this.contact = oracle.ListStore.findRecord('handle', contact_handle);

		// Draw the primary contact node
		this.addNode('person', this.contact.data.firstName[0] + '. ' + this.contact.data.lastName, oracle.Network.firstColPosition, (oracle.Network.canvasSize['height'] / 2), false);

		// TO DO :  Replace this with real secondary contacts
		// Build a random list of secondary contacts
		var num = Math.floor(Math.random()*6) + 2;
		for(i = 0; i < num; i++) {
			var sc = oracle.ListStore.findRecord('index', Math.floor(Math.random()*this.numRecords));
			this.secondaryContacts[i] = sc;
			// Assign a random number of tertiary contacts
			var numContacts = Math.floor(Math.random()*10);
			this.secondaryContacts[i]['data']['numContacts'] = numContacts;
			
			// Draw the secondary contact node
			this.addNode('person', sc.data.firstName[0] + '. ' + sc.data.lastName, oracle.Network.secondColPosition, ((oracle.Network.canvasSize['height'] / num) * (i + 0.5)), true);
			this.addNode('group', numContacts + ' ', oracle.Network.thirdColPosition, ((oracle.Network.canvasSize['height'] / num) * (i + 0.5)), false);
		}
	},
	
	addNode: function(kind, label, x, y, stroke) {
		var img = new Image();  
	  img.onload = function(){
	    oracle.Network.ctx.drawImage(img, x, y);

			set_textRenderContext(oracle.Network.ctx);
			oracle.Network.ctx.strokeStyle = '#fff';
			if(check_textRenderContext(oracle.Network.ctx)) {
		  	oracle.Network.ctx.strokeText(label, x + oracle.Network.nodeLabelBasePosition['x'], y + oracle.Network.nodeLabelBasePosition['y'], 12);
			}
	  }
	  img.src = kind == 'group' ? oracle.Network.groupNodeImage : oracle.Network.nodeImage;
	
		// Draw our stroke
		if(stroke) {
			oracle.Network.ctx.strokeStyle = '#9f9f9f';
			oracle.Network.ctx.beginPath();  
	    oracle.Network.ctx.moveTo(oracle.Network.firstColPosition + oracle.Network.nodeSize['width'], (oracle.Network.canvasSize['height'] / 2) + (oracle.Network.nodeSize['height'] / 2));  
	    oracle.Network.ctx.lineTo(x, y + (oracle.Network.nodeSize['height'] / 2));  
	    oracle.Network.ctx.lineTo(oracle.Network.thirdColPosition, y + (oracle.Network.nodeSize['height'] / 2));  
	    oracle.Network.ctx.stroke();
		}
	}
});