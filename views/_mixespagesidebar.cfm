<cfscript>		
	runEvent(event="app:Mixes.mixGenres");
	runEvent(event="app:Mixes.mixYears");
</cfscript>

<style>
	
	
	.options .ui-li-heading 
	{
	    display: block;
	    font-size: 23px;
		margin-top: 0px;
	    margin-bottom: 0px;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: normal;
		font-family:league-gothic;
		font-weight:normal;
	}
	
	
</style>

<cfoutput>
	
	<h2 class="inner">Sort Mixes</h2>
	<ul class="options" data-role="listview" data-inset="true" data-divider-theme="a" data-theme="d">
		<li data-role="list-divider" >Mix Genres</li>
		<cfloop from="1" to="#arrayLen(rc.mixGenres)#" index="i">
			<cfset mixGenre = rc.mixGenres[i]>	
				<li>
					<a href="##">
						<h2 class="options">#mixGenre.getgenre()#</h2>
					</a>
				</li>
		</cfloop>
		<li data-role="list-divider" >Mix Years</li>
		<cfloop from="1" to="#arrayLen(rc.mixYears)#" index="i">
			<cfset mixYear = rc.mixYears[i]>	
				<li>
					<a href="##">
						<h2>#mixYear#</h2>
					</a>
				</li>
		</cfloop>		
	</ul>
	
</cfoutput>