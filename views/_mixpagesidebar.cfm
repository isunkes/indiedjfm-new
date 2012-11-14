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
	    font-size: 23px;
		margin-top: 0px;
	    margin-bottom: 10px;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: normal;
		font-family:league-gothic;
		font-weight:normal;
	}
	
	.ui-li-heading-2 
	{
	    display: block;
	    font-size: 30px;
		margin-top: 10px;
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
	
	<h2 class="inner">Options</h2>
	<ul class="options" data-role="listview" data-inset="true" data-divider-theme="a" data-theme="d">
		
		<li data-role="list-divider" >Download</li>
		<li>
			<a href="##" data-ajax="false">
			<div style="white-space:normal;text-align:center;">
			<img src="#cb.layoutRoot()#/includes/site-images/23-circle-south@2x.png" align="left"  >
			<h2 class="options ui-li-heading-2">Download MP3</h2>
			</div>
			</a>	
		</li>
		<li data-role="list-divider" >Share</li>
		<li>
			<div style="white-space:normal;">
			<div class="addthis_toolbox addthis_default_style addthis_32x32_style" style="text-align:center;">
			<a class="addthis_button_facebook"></a>
			<a class="addthis_button_twitter"></a>
			<a class="addthis_button_pinterest"></a>
			<a class="addthis_button_google"></a>
			<a class="addthis_button_reddit"></a>
			<a class="addthis_button_compact"></a>
			</div>
			</div>
			<script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js##pubid=xa-50a1d9983450a3f8"></script>
		</li>		
	</ul>
	<cfset mixes = rc.dj.getmixes()>
	<cfif arrayLen(mixes) neq 0>
	<h2 class="inner">Recent Mixes</h2>
	<ul class="options" data-role="listview" data-inset="true" data-divider-theme="a" data-theme="d">
		
		<cfloop from="1" to="#arrayLen(mixes)#" index="i">
			<cfif i LT 7>
			<cfset mix = mixes[i]>	
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
			</cfif>
		</cfloop>		
	</ul>
	</cfif>
</cfoutput>

