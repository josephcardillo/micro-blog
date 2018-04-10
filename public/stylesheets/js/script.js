var audio = "/sounds/magic-chime-06.mp3"

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
        top: "-400px",
        left: "-250px"
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

// Play pixy dust when unicorn is clicked
var playing = false;
var audio = document.getElementById("audio");
function play() {
    audio.play();
    // audio.on("ended", function() {
    //   audio.stop();
    // })
}
