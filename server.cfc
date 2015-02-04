<cfcomponent>
    <cffunction name="getdata" access="remote" output="false" returnformat="json">
	<cfargument name='delay' type='string' default='5'>
	<cfargument name='format' type='string' default='png'>
	<cfargument name='height' type='string' default='800'>
	<cfargument name='width' type='string' default='1024'>
	<cfargument name='url' type='string' default='http://google.com'>

	
	<cfhttp url='https://jmillerdesign-url-screenshot.p.mashape.com/api' method='get'>
          <cfhttpparam type='header' name='x-mashape-key' value='2s9dke8XsbmshFc64KjDF8vOgJFFp1FmuPwjsnAeSy7XbwU4Qk'>
	  <cfhttpparam type='url' name='url' value='#url#'>
	  <cfhttpparam type='url' name='height' value='#height#'>
	  <cfhttpparam type='url' name='width' value='#width#'>
	  <cfhttpparam type='url' name='format' value='#format#'>
	  <cfhttpparam type='url' name='delay' value='#delay#'>
	</cfhttp>
	<cfdump var='#cfhttp.filecontent#' outpur='console'>
	<cfset thisPath=ExpandPath("*.*")>
        <cfset thisDirectory=GetDirectoryFromPath(thisPath)>

	<cftry>  
	 <cfreturn '#deserializejson(cfhttp.filecontent).screenshot#'>
	<cfcatch type='any'>
         <cfreturn 'error'>
	</cfcatch>
	</cftry>
    </cffunction>

    
</cfcomponent>

