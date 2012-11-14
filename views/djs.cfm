<cfscript>		
	runEvent(event="app:DJs.index");
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
   	 	min-height: 100px;
     	padding-left: 135px;
	}
	
	
	.ui-li-heading 
	{
	    display: block;
	    font-size: 30px;
		margin-top: 0px;
	    margin-bottom: 10px;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: normal;
		font-family:league-gothic;
		font-weight:normal;
	}
	
	.ui-li-desc {
    	font-size: 16px;
    	white-space: normal;
	}
</style>

<cfoutput>
	<h2 class="inner">DJ's</h2>
	<ul data-role="listview" data-inset="true">
		<cfloop from="1" to="#arrayLen(rc.djs)#" index="i">
			<cfset dj = rc.djs[i]>	
				<li>
					<a href="#cb.linkPage('dj')#?djid=#dj.getdjid()#" data-ajax="false">
						<cfif dj.getimagesmall eq ''>
						<img src="http://indiedj.fm/djProfile/placeHolderMixSmall.png">
						<cfelse>	
						<img src="#dj.getimagesmall()#">
						</cfif>
						<div style="white-space:normal;">
						<h2>#dj.getdjname()#</h2>
						<p><strong>#dj.getlocation()#</strong></p>
						</div>
					</a>
				</li>
		</cfloop>		
	</ul>
	
</cfoutput>	