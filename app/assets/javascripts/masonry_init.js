$( document ).ready(function() {
  $('#masonry-container').masonry({
    itemSelector: '.box',
    // set columnWidth a fraction of the container width
    // columnWidth: function( containerWidth ) {
    //   return containerWidth / 2;
    // }
    gutterWidth: 5
  });
});

