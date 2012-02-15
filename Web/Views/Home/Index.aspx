<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>Altair Constellation</title>

	    <link rel="stylesheet" type="text/css" href="Content/resources/css/ext-all.css" />
	    <link rel="stylesheet" type="text/css" href="Content/css/desktop.css" />

	    <script type="text/javascript" src="Content/builds/ext-core-dev.js"></script>
	    <script type="text/javascript" src="Content/classes.js"></script>

	    <script type="text/javascript">
	    Ext.Loader.setConfig({enabled:true});
	    Ext.Loader.setPath('Ext.ux', 'Content/builds/');
	    
	        Ext.require([
    'Ext.form.Panel',
    'Ext.layout.container.Anchor'
]);

Ext.onReady(function() {
    Ext.create('Ext.form.Panel', {
        renderTo: Ext.getBody(),
        title: 'Form Panel',
        bodyStyle: 'padding:5px 5px 0',
        width: 600,
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
                fieldLabel: 'First Name',
                anchor: '-5',
                name: 'first'
            }, {
                xtype:'textfield',
                fieldLabel: 'Company',
                anchor: '-5',
                name: 'company'
            }]
        }, {
            items: [{
                xtype:'textfield',
                fieldLabel: 'Last Name',
                anchor: '100%',
                name: 'last'
            },{
                xtype:'textfield',
                fieldLabel: 'Email',
                anchor: '100%',
                name: 'email',
                vtype:'email'
            }]
        }],
        buttons: ['->', {
            text: 'Save'
        }, {
            text: 'Cancel'
        }]
    });
});
	        
	    </script>
	</head>
	<body>
		<!--<a href="http://www.altairstudios.es" target="_blank" alt="Powered by Altair Studios" id="poweredby"><div></div></a>-->
	</body>
</html>