<cfoutput>
	<!DOCTYPE html> 
	<html> 
	<head> 
		<title>Page Title</title> 
		
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
		
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />
		<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>
		<script src="http://use.edgefonts.net/league-gothic.js"></script>
		<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/skeleton.css">
		<link rel="stylesheet" href="#cb.layoutRoot()#/includes/css/layout.css">
		<link href="#cb.layoutRoot()#/includes/css/styles.css" rel="stylesheet" type="text/css" />
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<!-- Favicons
		================================================== -->
		<link rel="shortcut icon" href="images/favicon.ico">
		<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
		
	</head> 
	
	<body> 
		<div data-role="page">
	
			<div data-role="header" >
				<div class="container">	
					
						<div style="float:left" class="indiedj-title">INDIEDJ.FM</div>
						
						<div data-role="navbar">
							<ul id="menu">
								#cb.rootMenu(type="li")#
							</ul>
						</div>
				
				</div>
			</div>
			<br class="clear" />
			<br class="clear" />
			<div data-role="content">
				<div class="container">
					<div class="two-thirds column">
						#cb.mainView()#
					</div>
					
					<div class="one-third column">
						#cb.quickView("_apppagesidebar")#
					</div>
	
				</div>
			</div>
	
		</div><!-- /page -->
	</body>
	</html>
</cfoutput>