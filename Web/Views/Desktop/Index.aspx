<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>Altair Constellation</title>

	    <link rel="stylesheet" type="text/css" href="Content/resources/css/ext-all.css" />
	    <link rel="stylesheet" type="text/css" href="Content/css/desktop.css" />

	    <script type="text/javascript" src="Content/builds/ext-core.js"></script>
	    <script type="text/javascript" src="Content/classes.js"></script>

	    <script type="text/javascript">
	        Ext.Loader.setPath({
	            'Ext.ux.desktop': 'js',
	            MyDesktop: ''
	        });
	
	        Ext.require('MyDesktop.App');
	
	        var myDesktopApp;
	        Ext.onReady(function () {
	            myDesktopApp = new MyDesktop.App();
	        });
	    </script>
	</head>
	<body>
		<!--<a href="http://www.altairstudios.es" target="_blank" alt="Powered by Altair Studios" id="poweredby"><div></div></a>-->
	</body>
</html>