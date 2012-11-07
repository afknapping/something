$('#main').masonry({
  itemSelector: '.tile',
  columnWidth: 308
});

$(".exp").click(
  function() {
    // $(".tile2, .tile4").removeClass("expanded");
    // $(".tile1", ".tile2", ".tile4").removeClass("exp");
    $(this).toggleClass("expanded");
    $(this).toggleClass("exp");

  $('#main').masonry({
    itemSelector: '.tile',
    columnWidth: 308
  });

    // $.scrollTo( $(this) )
});

$("#link-to-impressum").click(
  function() { $("#impressum").show();
});