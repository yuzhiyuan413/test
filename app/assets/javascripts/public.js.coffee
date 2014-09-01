
$.extend sites:{}

$.extend $.sites,
  my_template :(data,$template,$container)->
    $container.empty()
    this.append_template(data,$template,$container)

  append_template :(data,$template,$container)->
    temp = $template.html()
    this.append_item(item,temp,$container) for item in data
  
  append_item :(item,temp,$container)->
    for key,val of item
      reg = new RegExp("@{"+key+"}","gi")
      temp = temp.replace(reg,val)
    $container.append(temp)
    
  delete_item:(url,params,obj)->
    $.post(url,{id:params},(data)->
       $(obj).parent().parent().empty() if data.status
      )  


