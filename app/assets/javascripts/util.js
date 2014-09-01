$(function() {
  String.prototype.contains =function(item){
    var source = this
    for(var i in source){
      if(source[i] ==item)
        return true
    }
    return false
  }
  String.prototype.format = function () {
    var source = this;
    var part = /\{\d+\}/g;
    var res = source.match(part);
    for (var i = 0; i < res.length; i++) {
        var index = parseInt(res[i].substring(res[i].indexOf("{") + 1, res[i].indexOf("}")));
        source = source.replace(res[i], arguments[index]);
    }
    return source
  }
})

$.fn.extend ({
  tabs:function(argument){
    element = $(this);
    control = $(argument)
    element.delegate('li', 'click', function(event) {
      var targetName = $(this).attr('data-tab')
      element.trigger('change.tab',targetName)
    });

    element.bind('change.tab', function(event,tabName) {
      element.find('li').removeClass('active')
      element.find("li[data-tab='" + tabName + "']").addClass("active");
      control.find("div[data-tab]").removeClass('active')
      control.find("div[data-tab='"+tabName+"']").addClass('active')
    });

    //激活第一个选项卡
    element.trigger('change.tab',element.find('li:first').attr('data-tab'))
    return this
  },
  selectable:function(){
    el = $(this)
    parent = el.parent()
    el.mousedown(function(){
      el.removeClass("li-selected").removeClass("li-selecting")
      parent.removeClass("ul-selected")
      $(this).addClass("li-selecting")
      el.mousemove(function(){
        $(this).addClass("li-selecting") 
      })
    }).mouseup(function(){
        $('.li-selecting').addClass("li-selected").removeClass("li-selecting")
        parent.addClass("ul-selected") 
        el.unbind('mousemove')
      })   
    return el
  },
  menu:function(option){
    el = $(this)
    option = option|| []
    htmlItems = [],jsItems = [],
    opts={items:[]};
    htmlOpts = function(el,array){
      el.children('li').each(function(){
        var child = $(this).children('ul')
        var item
        if(child.length>0){
          item = {title:$(this).attr("title"),items:[]}
          htmlOpts(child,item.items)
        }
        else
        {
          item = {title:$(this).attr("title"),url:""}
          htmlOpts(child,item)
        }
        array.push(item)
      })
    }
    createArray = function(option){
      var item
      if($.isArray(option.items)){
          item = {title: option.title || "", items: []}
          jsOpts(option.items,item.items)
        }
      else{
        item = {title: option.title||"", url: option.url||""}
      }
      return item
    }
    jsOpts = function(option,array){
      if($.isArray(option)){
        for(var i = 0;i<option.length;i++){
          var item = createArray(option[i])
          array.push(item)
        }
      }
      else if($.isPlainObject(option)){
        var item = createArray(option)
        array.push(item)
      }
    }
    htmlOpts(el,htmlItems)
    jsOpts(option,jsItems)
    opts.items = htmlItems.concat(jsItems)
    el.empty()
    createHtml = function(el,items){
      for(var i = 0;i<items.length;i++){
        var el_item
        if($.isArray(items[i].items)){
          el_item = $("<li class=menu-li><label>{0}</label><a></a><ul class=menu-li-ul></ul></li>".format(items[i].title))
          el.append(el_item)
          createHtml(el_item.children('ul'),items[i].items)
        }
        else{
          el_item = $("<li class=menu-li><a href=\"{0}\">{1}</a></li>".format(items[i].url, items[i].title))
          el.append(el_item)
        }
        menuEvents(el_item)
      }
    }
    menuEvents = function(el){
      el.hover(function(event){
        var target = $( event.currentTarget );
        target.siblings('.menu-li').children('ul').hide()
        target.children('ul').show()
        target.children('ul').css("left",target.parent().width())
      })
      el.click(function(event) {
        var target = $( event.currentTarget );
        target.siblings().removeClass('menu-bg')
        target.addClass('menu-bg')
      });
    }
    $('body').click(function(event) {
      $(".menu-li-ul").hide()
    });
    createHtml(el,opts.items)
    regReplace = function(source){
      var part = /\d/g
      var array = source.match(part)
      for(var i in array){
        source = source.replace(array[i].toString(),'go')
      }
      return source
    }
    var str = "hello360你好啊"
    str = regReplace(str)
    alert(str)
  }
})
