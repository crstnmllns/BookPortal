var FormTimer = function(seconds){
  var seconds = seconds,
    interval = setInterval(delay, 1000)

  function delay(){
    updateHTML(seconds)
    if(seconds == 0){
      clearInterval(interval)
      blockForm()
    } else {
      seconds--
    }
  }

  function updateHTML(seconds){
    var minutes = Math.floor(seconds/60),
        remaining_seconds = seconds - minutes * 60,
        template = document.getElementById('timer')

    template.innerHTML = formatMins(minutes) + formatSecs(remaining_seconds)
  }

  function blockForm(){
    var inputs = document.getElementsByTagName('form')[0].elements
    for (var input of inputs){
      input.disabled = true
    }
  }

  function formatMins(minutes){
    var str = ''
    str += ((minutes < 10) ? "0" + minutes : minutes)
    str += ':'
    return str
  }

  function formatSecs(seconds){
    var str = ''
    str += ((seconds < 10) ? "0" + seconds : seconds)
    return str
  }


}