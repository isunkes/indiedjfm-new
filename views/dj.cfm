


<cfoutput>

	
	
	<h2 class="inner">#rc.dj.getdjname()#</h2>
	
	<ul data-role="listview" data-inset="true" data-divider-theme="a" data-theme="d">
			<li>
				<div style="white-space:normal; text-align:center;">
					<img src="#rc.dj.getimagebig()#" class="scale-with-grid" style="width:95%;" align="center">
				</div>
			</li>
	</ul>			
	<div class="ui-body ui-body-d" >
		<h3>#rc.dj.getlocation()#</h3>
		<p>#replace(rc.dj.getbio(),chr(13) & chr(10),'<br><br>','all')#</p>
	</div>
	<br>
	<br>
	
	

</cfoutput>	

