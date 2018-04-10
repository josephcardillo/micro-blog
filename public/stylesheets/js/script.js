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
<<<<<<< HEAD
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
=======
      $(".uniImage2").animate({
        width: "300px",
        position: "fixed",
        top: "-400px",
        left: "-250px"
      }, 3000)
    });
>>>>>>> 5707239c6a469ea8d2d3652f5bd07cc8f5b66a7f
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
