angular.module('myApp').controller('GuanliyonghuxinxiCtrl', function($scope, $uibModal, $http, $anchorScroll, confirmDialogs){
	$scope.pagination = {start: 0, limit: 20, maxSize: 8, currentPage: 1, limitOptions:[10,20,50,100]};
	$scope.searchForm = {extLimit: $scope.pagination};
	
	$scope.search = function() {
		$anchorScroll();
		$scope.promise = $http.post(ctx + '/guanliyonghuxinxi/GuanliyonghuxinxiCtrl/search', $scope.searchForm).success(function(data){
			$scope.dataList = data;
		});
	};
	$scope.pageChanged = function() {
		$scope.pagination.start = ($scope.pagination.currentPage - 1) * $scope.pagination.limit;
		$scope.search();
	};
	
	$scope.clearSearch = function() {
		$scope.pagination.start = 0;
		$scope.pagination.currentPage = 1;
		$scope.searchForm = {extLimit: $scope.pagination};
		$scope.search();
	}
	
	$scope.edit = function(item) {
		var rv = undefined;
		if(item) {
			rv = item.userPeopleID;
		}
		
		$uibModal.open({
			templateUrl: ctx + '/templates/module/GuanliyonghuxinxiEditTpl.html?v=',
			controller: 'GuanliyonghuxinxiEditCtrl',
			backdrop: 'static',
			resolve: {
				userPeopleID: function() {return rv;}
			}
		}).result.then(function (data) {
			if(data == 'success') {
				$scope.search();
			}
		});
	};
	
	$scope.del = function(item) {
		confirmDialogs.normal('确认', '确认删除 ' + item.name + '?')
		.result.then(function (btn) {
			if(btn == 'ok') {
				$scope.promise = $http.get(ctx + '/guanliyonghuxinxi/GuanliyonghuxinxiCtrl/delete?userPeopleID='+item.userPeopleID).success(function(data){
					if(data.result == "success") {
						$scope.$root.$broadcast('notify', {type:'success',title:'提示',info:'删除成功',timeOut:2000});
						$scope.search();
					}
					else {
						confirmDialogs.error('错误', data.info);
					}
				});
			}
		});
	};
	
	$scope.search();
});
angular.module('myApp').controller('GuanliyonghuxinxiEditCtrl', function($scope, $http, $uibModalInstance, confirmDialogs,userPeopleID){
	$scope.editForm = {};
	$scope.editForm.userPeopleID = userPeopleID;
	if(userPeopleID && userPeopleID > 0) {
		$scope.title = '编辑';
		$scope.promise = $http.get(ctx + '/guanliyonghuxinxi/GuanliyonghuxinxiCtrl/getDetailInfo?userPeopleID='+userPeopleID).success(function(data){
			$scope.editForm = data.data;
		});
	}
	else {
		$scope.title = '新增';
	}

	$scope.save = function() {
		$scope.promise = $http.post(ctx + '/guanliyonghuxinxi/GuanliyonghuxinxiCtrl/save', $scope.editForm).success(function(data){
			$uibModalInstance.close('success');
			if(data.result == 'success') {
				$scope.$root.$broadcast('notify', {type:'success',title:'提示',info:'保存成功',timeOut:2000});
			}
			else {
				confirmDialogs.error('错误', data.info);
			}
		});
	};
	
	$scope.cancel = function() {
		$uibModalInstance.dismiss('cancel');
	}
});
