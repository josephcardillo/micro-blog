var toggle = {
  open() {
    document.getElementsByClassName("toggleEditUser")[0].style.display = "block";
  },
  close() {
    document.getElementsByClassName("toggleEditUser")[0].style.display = "none";
  },
  uniAni() {
    $("#clickMe").click(function() {
      $( ".uniImage2" ).animate({
        left: "+=50",
        height: "500px"
      }, 5000)
    });
  },

  rotateUni(){
    $('#clickMe').click(function(){
      $(".uniImage2").rotate(function(){
        
      })
      $(this).rotate();
    }).click();
  }
}
