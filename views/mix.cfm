


<cfoutput>
	
	
	<h2 class="inner">#rc.mix.getmixartist()#</h2>
	<ul data-role="listview" data-inset="true" data-divider-theme="a" data-theme="d">
			<li data-role="list-divider" ><div style="white-space:normal;" >#rc.mix.getmixname()#</div></li>
			<li>
				<div style="white-space:normal; text-align:center;">	
					<img src="#rc.mix.getmiximagebig()#" class="scale-with-grid" style="width:95%;" align="center">
						
						
						
				</div>
			</li>
			<li>
				<div id="jquery_jplayer_1" class="jp-jplayer"></div>
				
						
						<div style="white-space:normal;" >
							<div class="ui-grid-a">
								<div class="ui-block-a">
									<img src="#cb.layoutRoot()#/includes/site-images/36-circle-play@2x.png" id="play" class="playing"  >
									<img src="#cb.layoutRoot()#/includes/site-images/37-circle-pause@2x.png" id="pause" class="paused"   >
								</div>
								<div class="ui-block-b">
									<input type="range" name="slider-progress" id="slider-progress" value="0" min="0" max="100" data-highlight="true" style="display:none;" data-theme="a" />
									<span id="currentTime" style="float:left;margin-top:15px;"></span>
									<span id="total-duration" style="float:right;margin-top:15px; margin-right:20px;">#TimeFormat(DateAdd("s", rc.mix.getmixLen(), CreateTime(0,0,0)), 'HH:mm:ss')#</span>
								</div>
								
							</div>
									
								
						</div>
			</li>
				
	</ul>
	<div class="ui-body ui-body-d" >
	<p><b>#rc.mix.getmixname()#</b></p>
	<p>#rc.mix.getmixdesc()#</p>
	<p>#rc.mix.getmixgenre()#</p>
	<p>#rc.mix.getmixyear()#</p>
	
	</div>
	<br><br>
	

</cfoutput>	