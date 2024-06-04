$(".rating-component .star")
  .on("mouseover", function () {
    var onStar = parseInt($(this).data("value"), 10);
    $(this)
      .parent()
      .children("i.star")
      .each(function (e) {
        if (e < onStar) {
          $(this).addClass("hover");
        } else {
          $(this).removeClass("hover");
        }
      });
  })
  .on("mouseout", function () {
    $(this)
      .parent()
      .children("i.star")
      .each(function (e) {
        $(this).removeClass("hover");
      });
  });

$(".rating-component .star").on("click", function () {
  var onStar = parseInt($(this).data("value"), 10);
  var stars = $(this).parent().children("i.star");
  var ratingMessage = $(this).data("message");

  $(".rating-component .status-msg").html(
    "<strong>Your rating:</strong> " + ratingMessage
  );

  stars.each(function (e) {
    if (e < onStar) {
      $(this).addClass("selected");
    } else {
      $(this).removeClass("selected");
    }
  });
});
