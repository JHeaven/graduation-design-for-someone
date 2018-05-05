jQuery(document).ready(function(){
    
    "use strict";

    function showTooltip(x, y, contents) {
	jQuery('<div id="tooltip" class="tooltipflot">' + contents + '</div>').css( {
	    position: 'absolute',
	    display: 'none',
	    top: y + 5,
	    left: x + 5
	}).appendTo("body").fadeIn(200);
    }
    
    /*****SIMPLE CHART*****/
    
    var newCust = [[0, 0], [1, 10], [2,5], [3, 12], [4, 5], [5, 8], [6, 0]];
    var retCust = [[0, 0], [1, 8], [2,3], [3, 10], [4, 3], [5, 6], [6,0]];
	
	var previousPoint = null;
	jQuery("#basicflot").bind("plothover", function (event, pos, item) {
	jQuery("#x").text(pos.x.toFixed(2));
	jQuery("#y").text(pos.y.toFixed(2));
			
	if(item) {
	    if (previousPoint != item.dataIndex) {
		previousPoint = item.dataIndex;
						
		jQuery("#tooltip").remove();
		var x = item.datapoint[0].toFixed(2),
		y = item.datapoint[1].toFixed(2);
	 			
		showTooltip(item.pageX, item.pageY,
		item.series.label + " of " + x + " = " + y);
	    }
			
	} else {
	    jQuery("#tooltip").remove();
	    previousPoint = null;            
	}
		
    });
		
    jQuery("#basicflot").bind("plotclick", function (event, pos, item) {
	if (item) {
	    plot.highlight(item.series, item.datapoint);
	}
    });
    
    
    /*****CHART 2 *****/
    
    var visitors = [[0, 0], [1, 3], [2,2], [3, 5], [4, 4], [5, 5], [6, 0]];
    var unique = [[0, 0], [1, 2], [2,1], [3, 3], [4, 3], [5, 4], [6,0]];
	
	var previousPoint = null;
	jQuery("#basicflot2").bind("plothover", function (event, pos, item) {
	jQuery("#x").text(pos.x.toFixed(2));
	jQuery("#y").text(pos.y.toFixed(2));
			
	if(item) {
	    if (previousPoint != item.dataIndex) {
		previousPoint = item.dataIndex;
						
		jQuery("#tooltip").remove();
		var x = item.datapoint[0].toFixed(2),
		y = item.datapoint[1].toFixed(2);
	 			
		showTooltip(item.pageX, item.pageY,
		item.series.label + " of " + x + " = " + y);
	    }
			
	} else {
	    jQuery("#tooltip").remove();
	    previousPoint = null;            
	}
		
    });
		
    jQuery("#basicflot2").bind("plotclick", function (event, pos, item) {
	if (item) {
	    plot.highlight(item.series, item.datapoint);
	}
    });
    
    
    /*****CHART 3 *****/
    
    var impressions =       [[0, 0], [1, 5], [2,2], [3, 7], [4, 4], [5, 5], [6, 0]];
    var uniqueimpressions = [[0, 0], [1, 2], [2,1], [3, 6], [4, 3], [5, 4], [6,0]];
	
		
	var previousPoint = null;
	jQuery("#basicflot3").bind("plothover", function (event, pos, item) {
	jQuery("#x").text(pos.x.toFixed(2));
	jQuery("#y").text(pos.y.toFixed(2));
			
	if(item) {
	    if (previousPoint != item.dataIndex) {
		previousPoint = item.dataIndex;
						
		jQuery("#tooltip").remove();
		var x = item.datapoint[0].toFixed(2),
		y = item.datapoint[1].toFixed(2);
	 			
		showTooltip(item.pageX, item.pageY,
		item.series.label + " of " + x + " = " + y);
	    }
			
	} else {
	    jQuery("#tooltip").remove();
	    previousPoint = null;            
	}
		
    });
		
    jQuery("#basicflot3").bind("plotclick", function (event, pos, item) {
	if (item) {
	    plot.highlight(item.series, item.datapoint);
	}
    });
    
    
    jQuery('#sparkline').sparkline([4,3,3,1,4,3,2,2,3,10,9,6], {
	type: 'bar', 
        height:'30px',
        barColor: '#428BCA'
    });
    
    jQuery('#sparkline2').sparkline([9,8,8,6,9,10,6,5,6,3,4,2], {
	type: 'bar', 
	height:'30px',
        barColor: '#999'
    });
    
    jQuery('#sparkline3').sparkline([4,3,3,1,4,3,2,2,3,10,9,6], {
	type: 'bar', 
        height:'30px',
        barColor: '#428BCA'
    });
    
    jQuery('#sparkline4').sparkline([9,8,8,6,9,10,6,5,6,3,4,2], {
	type: 'bar', 
	height:'30px',
        barColor: '#999'
    });
    
    jQuery('#sparkline5').sparkline([4,3,3,1,4,3,2,2,3,10,9,6], {
	type: 'bar', 
        height:'30px',
        barColor: '#428BCA'
    });
    
    jQuery('#sparkline6').sparkline([9,8,8,6,9,10,6,5,6,3,4,2], {
	type: 'bar', 
	height:'30px',
        barColor: '#999'
    });
    
    
    /***** BAR CHART *****/
    
    
    var delay = (function() {
	var timer = 0;
	return function(callback, ms) {
	    clearTimeout(timer);
	    timer = setTimeout(callback, ms);
	};
    })();

    
    // This will empty first option in select to enable placeholder
    
    // Select2
   
                
    // Basic Wizard
    jQuery('#basicWizard').bootstrapWizard({
        onTabShow: function(tab, navigation, index) {
            tab.prevAll().addClass('done');
            tab.nextAll().removeClass('done');
            tab.removeClass('done');
                        
            var $total = navigation.find('li').length;
            var $current = index + 1;
                        
            if($current >= $total) {
                $('#basicWizard').find('.wizard .next').addClass('hide');
                $('#basicWizard').find('.wizard .finish').removeClass('hide');
            } else {
                $('#basicWizard').find('.wizard .next').removeClass('hide');
                $('#basicWizard').find('.wizard .finish').addClass('hide');
            }
        }
    });
    
});