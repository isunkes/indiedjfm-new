<cfoutput>
<!--- ContentBoxEvent --->
#cb.event("cbui_BeforeSideBar")#
<ul data-role="listview" data-inset="true">
<li>
<div id="app-page-sidebar"  >
	<div >
		<img src="http://www.indiedj.fm/includes/images/IOS_128.png" style="padding-left:20px;padding-bottom:20px;padding-right:20px;">
	</div>
	
	<div>
		<h4>Get the Mobile App</h4>
		<a href="http://itunes.apple.com/us/app/indiedj.fm/id539840071?ls=1&mt=8" style="text-decoration:none; border: 0 0 0 0;" target="_blank">
			<img class="scale-with-grid" src="http://www.indiedj.fm/includes/images/appleappstore.png"  style="padding-bottom:20px;padding-top:0px;">
		</a>
		<br/>
		<a href="https://play.google.com/store/apps/details?id=air.com.hostmytrack.sirisaac" style="text-decoration:none; border: 0 0 0 0;" target="_blank">
			<img class="scale-with-grid" src="http://www.indiedj.fm/includes/images/googleappstore.png"  style="padding-bottom:20px;padding-top:0px;">
		</a>
	</div>
</div>
</li>
</ul>
<!--- ContentBoxEvent --->
#cb.event("cbui_afterSideBar")#
</cfoutput>