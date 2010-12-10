Ext.ns('login', 'Ext.ux');


login.LoginForm = {
	scroll: 'vertical',
	url   : '/app/Settings/do_login',
	standardSubmit : false,
	items: [
	{
		xtype: 'fieldset',
		title: '',
		instructions: 'Please enter your credentials.',
		defaults: {
			required: true,
			labelAlign: 'left',
			labelWidth: 100
		},
		items: [
		{
			xtype: 'textfield',
			name : 'login',
			label: 'Login',
			useClearIcon: true,
			autoCapitalize : false
		}, {
			xtype: 'passwordfield',
			name : 'password',
			label: 'Password',
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
		dockedItems: [
		{
			xtype: 'toolbar',
			dock: 'bottom',
			items: [
				{
					text: 'Reset',
					handler: function() {
						login.form.reset();
					}
				},
				{
					text: 'Login',
					ui: 'confirm',
					handler: function() {
						login.form.submit({
							waitMsg : {message:'Submitting', cls : 'demos-loading'}
						});
					}
				}
				]
			}
			]

		};