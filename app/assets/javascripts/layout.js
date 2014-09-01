
postSend=function(purl, pdata, callback, pdatatype, ptype){
  $.ajax({
    url: purl,
    type: ptype,
    data: pdata,
    dataType: pdatatype,
    success: callback,
    error: function (e) {
      alert("失败");
    }
  });
}

renderControl = function (min, max) {
  $(".split-control").html("");
  $(".split-control").append("<span class='page-prev'>prev</span>")
  for (var j = min; j < max; j++) {
      var span = "<span class='split_span'>" + j + "</span>";
      $(".split-control").append(span);
  }
  $(".split-control").append("<span class='page-next'>next</span>")
}
findCurrent = function (pageIndex) {
  $(".split-control span").each(function () {
    if (pageIndex == $(this).text() - 1) {
        $(this).siblings().removeClass("curPage")
        $(this).addClass("curPage")
    }
  })
}
controlbtnState = function (pageIndex) {
    pageIndex == 0 ? $(".page-prev").addClass("disabled") : $(".page-prev").removeClass("disabled");
    pageIndex == Math.ceil(data.length / pagesize) - 1 ? $(".page-next").addClass("disabled") : $(".page-next").removeClass("disabled");
}

