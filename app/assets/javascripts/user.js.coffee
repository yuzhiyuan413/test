$.extend site:{}

$.extend $.site,
  move:(obj)->
      el = obj
      parent = el.parent()
      xo = 0
      yo = 0
      ismove = false
      el.mousedown((e) ->
        xo = e.pageX - el.position().left
        yo = e.pageY - el.position().top
        ismove = true
      ).mouseup (e) ->
        ismove = false
        xo = 0
        yo = 0
      parent.mousemove (e) ->
        if ismove
          el.css({top:e.pageY-yo,left:e.pageX-xo})
          return false

