window.onload = function() {
    var chagedBtn = document.getElementById("changedBtn");
    chagedBtn.click();
}

function openTab(evt, title) {
    // clean currently open tab
    var tabcontent = document.getElementsByClassName("tabcontent");
    for (var i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }

    var tabBtn = document.getElementsByClassName("tabBtn");
    for (var i = 0; i < tabBtn.length; i++) {
      tabBtn[i].className = tabBtn[i].className.replace(" active", "");
    }

    // mark current tab as active
    document.getElementById(title).style.display = "block";
    evt.currentTarget.className += " active";
}
