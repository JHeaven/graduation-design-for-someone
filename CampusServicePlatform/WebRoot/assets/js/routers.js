var notificationOpts = {
	"closeButton": true,
	"debug": false,
	"positionClass": "toast-bottom-right",
	"onclick": null,
	"showDuration": "300",
	"hideDuration": "1000",
	"timeOut": "5000",
	"extendedTimeOut": "1000",
	"showEasing": "swing",
	"hideEasing": "linear",
	"showMethod": "fadeIn",
	"hideMethod": "fadeOut"
};
$('document').ready(function() {
      //
      // create some functions to be executed when
      // the correct route is issued by the user.
      //
		var home = function () { toastr.info('欢迎回到首页',null,notificationOpts);show_loading_bar({pct: 100,delay: 0.3});console.log("home!!!"); };
		var microblogSelect = function () {
			toastr.info('欢迎来到动态分享！',null,notificationOpts);
			show_loading_bar({pct: 80,delay: 0.3});
			$("#microblogSelectSection").load("microblog/microblogSelect/1");
			console.log("microblogSelect!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
			};
			
		var articleSelect = function (sectionId) {
			show_loading_bar({pct: 80,delay: 0.3});
			$("#articleSelectSelectSection").load("article/articleSelect?sectionId="+sectionId);
			console.log("articleSelectSelect!!!! sectionId = "+sectionId);
			show_loading_bar({pct: 100,delay: 0.3});
			};
			
		var articleSelectOfPage = function(sectionId,pageNo){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#articleSelectSelectSection").load("article/articleSelect?sectionId="+sectionId+"&pageNo="+pageNo);
			console.log("articleSelectSelect!!!! sectionId = "+sectionId);
			show_loading_bar({pct: 100,delay: 0.3});
			};
		
      
		var sectionSelectByParentid = function(parentId){
			toastr.info('欢迎来到话题互动！',null,notificationOpts);
			show_loading_bar({pct: 80,delay: 0.3});
			$("#sectionSelectByParentidSection").load("section/sectionSelectByParentid?parentId="+parentId);
			console.log("sectionSelectByParentid!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
			};
			
		var articleInsert = function(sectionId){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#articleInsertSection").load("article/articleInsert?sectionId="+sectionId);
			console.log("articleInsert!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		
		var articleSelectOne = function(articleId){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#articleSelectOneSection").load("article/articleSelectOne/"+articleId);
			console.log("articleSelectOne!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var articleUpdate = function(articleId){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#articleUpdateSection").load("article/articleUpdate/"+articleId);
			console.log("articleUpdate!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		
		
		var activitySelect = function(){
			toastr.info('欢迎来到校园活动！',null,notificationOpts);
			show_loading_bar({pct: 80,delay: 0.3});
			$("#activitySelectSection").load("activity/activitySelect");
			console.log("activitySelect!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var goToActivityInsert = function(){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#activityInsertSection").load("activity/goToActivityInsert");
			console.log("gotoActivityInsert!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var userProfile = function(){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#userProfileSection").load("user/userProfile");
			console.log("userProfile!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var userOtherProfile = function(userId){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#userOtherProfileSection").load("user/userOtherProfile/"+userId);
			console.log("userOtherProfile!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var friendSelectofMy = function(){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#friendSelectofMySection").load("friend/friendSelectofMy/");
			console.log("friendSelectofMy!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var communication = function(){
			toastr.info('欢迎来到传道授业解惑！',null,notificationOpts);
			show_loading_bar({pct: 80,delay: 0.3});
			$("#communicationSection").load("communication/selectComm");
			console.log("communication!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var communicationSelectOne = function(communicationId){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#communicationSelectOneSection").load("communication/selectCommOne/"+communicationId);
			console.log("communication!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var communicationInsert = function(){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#communicationInsertSection").load("communication/communicationInsert");
			console.log("communicationInsertSection!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var communicationSelect = function(pageNo){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#communicationSection").load("communication/selectComm?pageNo="+pageNo);
			console.log("communicationSection!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		
		var iamateacher = function(articleId){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#iamateacherSection").load("communication/iamateacher/"+articleId);
			console.log("iamateacher!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var microblogSelectOfMy = function(){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#microblogSelectOfMySection").load("microblog/microblogSelectOfMy");
			console.log("microblogSelectOfMy!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var microblogSelectOfPop = function(){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#microblogSelectOfPopSection").load("microblog/microblogSelectOfPop");
			console.log("microblogSelectOfPop!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var userProfileEdit = function(){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#userProfileEditSection").load("user/userProfileEdit");
			console.log("userProfileEdit!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var fileSelect = function(){
			toastr.info('欢迎使用校园网盘，请自觉维护网盘资源！',null,notificationOpts);
			show_loading_bar({pct: 80,delay: 0.3});
			$("#fileSelectSection").load("file/fileSelect");
			console.log("fileSelect!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var goToNextFolder = function(folderId){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#goToNextFolderSection").load("file/goToNextFolder/"+folderId);
			console.log("goToNextFolder!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var goToMyNextFolder = function(folderId){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#goToMyNextFolderSection").load("file/goToMyNextFolder/"+folderId);
			console.log("goToMyNextFolder!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		var cropimage = function(){
			show_loading_bar({pct: 80,delay: 0.3});
			$("#cropimageSection").load("user/cropimage");
			console.log("goToMyNextFolder!!!!");
			show_loading_bar({pct: 100,delay: 0.3});
		}
		
		
		
      var allroutes = function() {
        var route = window.location.hash.slice(1);
        var reg = '/[A-Za-z0-9]*';
        str = route;
        var arr = str.match(reg);
        route = arr[0].slice(1);
        var sections = $('section');
        var section;

        section = sections.filter('[data-route=' + route + ']');

        if (section.length) {
          sections.hide(250);
          section.show(250);
        }
      };

      //
      // define the routing table.
      //
      var routes = {
    	'/home': home,
    	'/microblogSelect': microblogSelect,
    	'/articleSelect/:sectionId': articleSelect,
    	'/articleSelect/:sectionId/:pageNo':articleSelectOfPage,
    	'/sectionSelectByParentid/:parentId': sectionSelectByParentid,
    	'/articleInsert/:sectionId':articleInsert,
    	'/articleSelectOne/:articleId':articleSelectOne,
    	'/articleUpdate/:articleId':articleUpdate,
    	'/activitySelect':activitySelect,
    	'/activityInsert':goToActivityInsert,
    	'/userProfile':userProfile,
    	'/userOtherProfile/:userId':userOtherProfile,
    	'/friendSelectofMy':friendSelectofMy,
    	'/communication':communication,
    	'/communicationSelectOne/:communicationId':communicationSelectOne,
    	'/communicationInsert':communicationInsert,
    	'/communicationSelect/:pageNo':communicationSelect,
    	'/iamateacher/:articleId':iamateacher,
    	'/microblogSelectOfMy':microblogSelectOfMy,
    	'/microblogSelectOfPop':microblogSelectOfPop,
    	'/userProfileEdit':userProfileEdit,
    	'/fileSelect':fileSelect,
    	'/goToNextFolder/:folderId':goToNextFolder,
    	'/goToMyNextFolder/:folderId':goToMyNextFolder,
    	'/cropimage':cropimage
      };

      //
      // instantiate the router.
      //
      var router = Router(routes);

      //
      // a global configuration setting.
      //
      router.configure({
        on: allroutes
      });

      router.init();
    });