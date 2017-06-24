$(function() {
  $(".slider-range").each(function(index, element) {
    $(element).slider({
      range: true,
      min: 1,
      max: 5,
      values: [$('#' + element.id + '-from').val(), $('#' + element.id + '-to').val()],
      slide: function(event, ui) {
        $('#' + this.id + '-amount').html(ui.values[ 0 ] + " - " + ui.values[ 1 ]);
        $('#' + this.id + '-from').val(ui.values[0]);
        $('#' + this.id + '-to').val(ui.values[1]);
      }
    });
  });

  $('.datepicker').datepicker({ dateFormat: 'yy-mm-dd' });
});
