$('document').ready(function () {
  $('#search').click(function () {
      var origin = $('#origin').val();
      var destination = $('#destination').val();

      var url = [
          '/flights',
          encodeURIComponent(origin),
          encodeURIComponent(destination)
      ].join('/');

      $.ajax({
          url: url,
          method: 'get'
      }).done(function (results) {
          // JSON results should be available here
      }).error(function () {
          alert('this is an error');
      });
  });
});