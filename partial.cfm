<div ng-init='readrules()' class='center'>
<br>

<span ng-if='loading == "true"'><img src='http://createurapp.com/appimg/loading.gif'></span>

<div class="page-header green row">
   <h1 class='green'>ScreeenShot Taker <small>Take screenshot of any web page</small></h1>
</div>

 <div class='row'>
   <p class='bg-primary' style='color:white;background-color: #730469;padding:10px;font-size:28px'>It can take upto few seconds</p>
 </div>
  <br>
  
  <div class="form-group row">

	  <label for="likes" class="green col-sm-2 control-label" style='margin-right:-40px'>URL</label>
         <div class="col-sm-2">
	  <input ng-model='formData.url' >
	 </div>

	  <label for="likes" class="green col-sm-2 control-label" style='margin-right:-40px'>Delay</label>
         <div class="col-sm-2">
	  <input ng-model='formData.delay' >
	 </div>

	  <label for="likes" class="green col-sm-2 control-label" style='margin-right:-40px'>Height</label>
         <div class="col-sm-2">
	  <input ng-model='formData.height' >
	 </div>
          
	  <br>
	  <br>
	  <label for="likes" class="green col-sm-2 control-label" style='margin-right:-40px'>Width</label>
         <div class="col-sm-2">
	  <input ng-model='formData.width' >
	 </div>

	<label for="likes" class="green col-sm-2 control-label" style='margin-right:-40px'>Format</label>
         <div class="col-sm-2">
	  <input ng-model='formData.format' >
	 </div>
  
        <br><br>
	
    
	<div class='row'>
	 <div class="col-sm-1 col-sm-offset-5" style='margin-top:10px'>
         <button class="btn btn-success" ng-click="getstats()" >Get Screenshot</button>
	 </div>
	</div>
        <br><Br>
        <div class='row' ng-if='imgpath.length > 0'>
	   <img class='img-thumbnail' ng-src='{{imgpath}}' />
	</div>
        
	<div class='row'>
	 <div class="col-sm-offset-4" style='margin-top:10px'>
          <button ng-if='imgpath.length > 0' class="btn btn-success col-sm-2" ng-click="download()" >Download</button>
	  <button ng-if='imgpath.length > 0' class="btn btn-success col-sm-2" ng-click="reset()" style='margin-left:10px'>Clear</button>
	 </div>
	</div>

   
   <hr>

  </div>

<br>




</div>