<cfoutput>
	<!DOCTYPE html> 
	<html> 
	<head> 
		<title>Page Title</title> 
		
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
		
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />
		<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
		
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
		
		<cfscript>		
			runEvent(event="app:Mixes.mix");
			rc.djid= rc.mix.getuser_id();
			runEvent(event="app:DJs.getDJ");
		</cfscript>
		
		
		<link rel="stylesheet" href="//code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css">
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
		<script type="text/javascript" src="#cb.layoutRoot()#/includes/js/jquery.jplayer.min.js"></script>
		<script type="text/javascript" src="//code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
		
		<!--- mix player scripts--->
		<script>
		$("##mix-page").live( "pageinit", function() {
		 
		
				var myPlayer = $("##jquery_jplayer_1"),
				myPlayerData,
				options = {
					ready: function (event) {
						// Hide the volume slider on mobile browsers. ie., They have no effect.
						if(event.jPlayer.status.noVolume) {
							// Add a class and then CSS rules deal with it.
							$(".jp-gui").addClass("jp-no-volume");
						}
						// Setup the player with media.
						$(this).jPlayer("setMedia", {
							mp3: "https://s3.amazonaws.com/hostmytrack.com/#rc.mix.getmixfile()#.mp3"
							
						});
					},
					timeupdate: function(event) {
						$( "##slider-progress" ).val(event.jPlayer.status.currentPercentAbsolute);
						$( "##slider-progress" ).slider('refresh');
					},
					volumechange: function(event) {
						if(event.jPlayer.options.muted) {
							myControl.volume.slider("value", 0);
						} else {
							myControl.volume.slider("value", event.jPlayer.options.volume);
						}
					},
					swfPath: "#cb.layoutRoot()#/includes/js/",
					supplied: "mp3",
					solution:"html,flash",
					cssSelectorAncestor: "",
					cssSelector: {
				        play: "##play",
						pause: "##pause",
        				stop: "##stop",
        				mute: "##mute",
       	 				unmute: "##unmute",
        				currentTime: "##currentTime",
        				duration: "##duration"
				      },
					wmode: "window"
				};
				
			$.jPlayer.timeFormat.showHour = true;	
		
			// Instance jPlayer
			myPlayer.jPlayer(options);
		
			// A pointer to the jPlayer data object
			myPlayerData = myPlayer.data("jPlayer");
			
			
			$( "##slider-progress" ).bind( "slidestop", function(event) {
					var sp = myPlayerData.status.seekPercent;
					var slidePostition = $( "##slider-progress" ).val();
					
					if(sp > 0) {
						myPlayer.jPlayer("playHead", slidePostition * (100 / sp));
					} else {
						// Create a timeout to reset this slider to zero.
						setTimeout(function() {
							$( "##slider-progress" ).val(0);
						}, 0);
					}
					myPlayerData.play();
			
			 });
			 
			 $( "##slider-progress" ).bind( "slidestart", function(event) {
					myPlayerData.pause();
			
			 });
			 
			
	

			 
			
		
		});
			
		</script>
	<script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>
	</head> 
	
	<body> 
		<div data-role="page" id="mix-page">
	
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
			<div data-role="content" >
				<div class="container">
					<div class="two-thirds column">
						#cb.quickView("mix")#
					</div>
					
					<div class="one-third column">
						#cb.quickView("_mixpagesidebar")#
					</div>
	
				</div>
			</div>
	
		</div><!-- /page -->
	</body>
	</html>
</cfoutput>