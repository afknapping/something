$(".exp").click(
  function() {
    $(".tile2, .tile4").removeClass("expanded");
    $(".tile1", ".tile2", ".tile4").removeClass("exp");
    $(this).addClass("expanded");
    $(this).removeClass("exp");
    // $.scrollTo( $(this) )
});

$("#link-to-impressum").click(
  function() {
    $("#impressum").show();
});