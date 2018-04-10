var toggle = {
  open() {
    document.getElementsByClassName("toggleEditUser")[0].style.display = "block";
  },
  close() {
    document.getElementsByClassName("toggleEditUser")[0].style.display = "none";
  },
  img1() {
    $(".uniImage1").fadeTo("slow", 1);
  }
}
