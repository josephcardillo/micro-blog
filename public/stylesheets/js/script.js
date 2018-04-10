var toggle = {
  open() {
    document.getElementsByClassName("toggleEditUser")[0].style.display = "block";
  },
  close() {
    document.getElementsByClassName("toggleEditUser")[0].style.display = "none";
  },
  uniAni() {
    $("#clickMe").click(function() {
      $(".uniImage2").animate({
        width: "300px",
        position: "fixed",
        top: "-200px",
        left: "-75px"
      }, 3000)
    });
  }
}

$("#clickMe").rotate({
  bind:
  {
    click: function() {
    $(this).rotate({
      duration: 3000,
      angle: 0,
      animateTo:360
      })
    },
  }
});
