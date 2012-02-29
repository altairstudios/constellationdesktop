<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>Altair Constellation</title>

	    <link rel="stylesheet" type="text/css" href="Content/resources/css/ext-all.css" />
	    <link rel="stylesheet" type="text/css" href="Content/css/desktop.css" />

	    <script type="text/javascript" src="Content/ext-all.js"></script>
	    <script type="text/javascript" src="Content/classes.js"></script>

	    <script type="text/javascript">
		    Ext.Loader.setConfig({enabled:true});
		    Ext.Loader.setPath('Ext.ux', 'Content/builds/');
		    
	        Ext.require([
			    'Ext.form.Panel',
			    'Ext.layout.container.Anchor'
			]);
			
			var window;

			Ext.onReady(function() {
				var panel = Ext.create('Ext.form.Panel', {
			        //renderTo: Ext.getBody(),
			        title: 'Introduzca sus datos de acceso',
			        bodyStyle: 'padding:5px 5px 0',
			        width: '100%',
			        fieldDefaults: {
			            labelAlign: 'top',
			            msgTarget: 'side'
			        },
			        defaults: {
			            border: false,
			            xtype: 'panel',
			            flex: 1,
			            layout: 'anchor'
			        },
			        layout: 'hbox',
			        items: [{
			            items: [{
			                xtype:'textfield',
			                fieldLabel: 'Usuario',
			                anchor: '100%',
			                name: 'first',
							//vtype:'text',
							id: 'user'
			            }, {
			                xtype:'textfield',
			                fieldLabel: 'Contraseña',
			                anchor: '100%',
			                name: 'password',
			                //vtype:'password',
			                id: 'password'
			            }]
			        }],
			        buttons: ['->', {
			            text: 'Acceder',
			            handler: function() {
							Ext.Ajax.request({
							   url: 'Home/Login',
							   success: function (response) {
									x = Ext.decode( response.responseText );
									alert(x);
									document.location = "Desktop";
								},
							   failure: function () { console.log('failure');},
							   headers: {
							       'my-header': 'foo'
							   },
							   params: { Name: Ext.getCmp('user').getValue(), Password: Ext.getCmp('password').getValue() }
							});
			            }
			        }]
			    });
			    
			    
			    
				win = Ext.create('widget.window', {
	                title: 'Acceso',
	                closable: true,
	                closeAction: 'hide',
	                //animateTarget: this,
	                width: 600,
	                /*height: 350,*/
	                layout: 'border',
	                bodyStyle: 'padding: 5px;',
	                items: [{
	                    region: 'center',
	                    items: [panel]
	                }]
	            });
			
			    
			    
			    win.show();
			});
	        
	    </script>
	</head>
	<body>
		<!--<a href="http://www.altairstudios.es" target="_blank" alt="Powered by Altair Studios" id="poweredby"><div></div></a>-->
	</body>
</html>
