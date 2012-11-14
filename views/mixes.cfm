<cfscript>		
	event.paramValue("moduleEntryPoint","App");
	event.paramValue("moduleHandler","Mixes");
	event.paramValue("moduleAction","index");
	prc.contentbox_moduleEvent = rc.moduleHandler & "." & rc.moduleAction;
	runEvent(event="app:#prc.contentbox_moduleEvent#");
</cfscript>

<style>
	.ui-li-thumb, .ui-listview .ui-li-icon 
	{
		left: 1px;
		max-height: 115px;
		max-width: 115px;
		position: absolute;
		top: 0;
	}
	
	.ui-li-has-thumb .ui-btn-inner a.ui-link-inherit, .ui-li-static.ui-li-has-thumb 
	{
   	 	min-height: 60px;
     	padding-left: 135px;
	}
	
	
	.ui-li-heading 
	{
	    display: block;
	    font-size: 25px;
		margin-top: 0px;
	    margin-bottom: 10px;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: normal;
		font-family:league-gothic;
		font-weight:normal;
	}
	
	.ui-li-desc {
    	font-size: 13px;
    	white-space: normal;
	}
</style>

<cfoutput>
	<h2 class="inner">Featured Mixes</h2>
	<ul data-role="listview" data-inset="true" data-theme="d" data-divider-theme="a">
		<cfloop from="1" to="#arrayLen(rc.mixes)#" index="i">
			<cfset mix = rc.mixes[i]>	
				<li>
					<a href="#cb.linkPage('mix')#?id=#mix.getid()#" data-ajax="false">
						
						<img src="#mix.getmiximagesmall()#">
						<div style="white-space:normal;">
						<h2>#mix.getmixartist()#</h2>
						<p><strong>#mix.getmixname()#</strong></p>
						<p>#mix.getmixgenre()#</p>
						<p>#mix.getmixyear()#</p>
						</div>
					</a>
				</li>
		</cfloop>		
	</ul>
	
</cfoutput>	