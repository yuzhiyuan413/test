var app = angular.module('memapp',[])
//添加 X-CSRF-Token 到 angular 发起的请求
app.config ["$httpProvider", function($httpProvider){
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
  }
]

app.controller('MemListCtrl',function($scope,$http){
  $scope.get_mems= function(page){
    $http.post('/member/list',{page : page+1}).success(
    	function(data) {
    		$scope.mems = data
    	})
  }
})

app.controller('PhoneListCtrl',function($scope){
	$scope.phones = [
    {"name": "tomo",
     "snippet": "Fast just got faster with Nexus S.",
     "age": 3},
    {"name": "jack",
     "snippet": "The Next, Next Generation tablet.",
     "age": 2},
    {"name": "王五™",
     "snippet": "The Next, Next Generation tablet.",
     "age": 1}
  ];
  $scope.order = 'age'
})


