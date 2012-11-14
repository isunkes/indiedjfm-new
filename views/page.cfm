<cfoutput>

	<!--- ContentBoxEvent --->
	#cb.event("cbui_prePageDisplay")#

	<!--- Title --->
	<h2 class="inner">#cb.getCurrentPage().getTitle()#</h2>
	<!--- Render Content --->
	#cb.getCurrentPage().renderContent()#

	<!--- ContentBoxEvent --->
	#cb.event("cbui_postPageDisplay")#

</cfoutput>