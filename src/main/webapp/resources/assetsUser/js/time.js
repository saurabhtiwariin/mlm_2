
(function ($) {
    "use strict";
    var mainApp = {

        main_fun: function () {
        	var tmp = $('#tmp').val();
    		console.log("tmp="+tmp );
    			
    	var tmpacceptId = '#acceptId'+tmp; 		
    	var acceptId = $(tmpacceptId).val();
    	console.log("acceptId="+acceptId );
    	
    		var tmpcommitStatusId = '#commitStatusId'+acceptId; 
    		var commitStatusId = $(tmpcommitStatusId).val();
    		console.log("tmpcommitStatusId="+tmpcommitStatusId );
    		console.log("commitStatusId="+commitStatusId );
    		
    		var tmpcurrentUserId = '#currentUserId'+acceptId;
    		var tmplifeTimestamp ='#lifeTimestamp'+acceptId;
    		var tmpcountdown ='#countdown'+acceptId;
    		
    		
    		 console.log("tmpcurrentUserId="+tmpcurrentUserId);
    		 console.log( "tmplifeTimestamp="+tmplifeTimestamp);
    		 console.log("tmpcountdow="+tmpcountdown );
    		 
    		if (commitStatusId == 1) {

    			var currentUserId = $(tmpcurrentUserId).val();
    			var lifeTimestamp = $(tmplifeTimestamp).val();
    			var lifeTimestampDate = new Date(lifeTimestamp);
    			var currentTimestamp = $.now();

    			console.log("currentUserId="+currentUserId );
    			 console.log("lifeTimestamp="+lifeTimestamp);
    			 console.log( "lifeTimestampDate="+lifeTimestampDate);
    			 console.log("currentTimestamp"+currentTimestamp );
    			 
    			
    			if (lifeTimestamp == currentTimestamp) {
    				$.ajax({
    					url : '/user/memberZoneAccountLock.html?currentUserId='
    							+ currentUserId,
    					type : 'post'
    				});
    			}

    			$(tmpcountdown).countdown('2016/01/17 15:30:00',
    					function(event) {
    						$(this).html(event.strftime('%d days %H:%M:%S'));
    					});
    		}



        },

        initialization: function () {
            mainApp.main_fun();

        }

    }
    // Initializing ///

    $(document).ready(function () {
        mainApp.main_fun();
    });

}(jQuery));



