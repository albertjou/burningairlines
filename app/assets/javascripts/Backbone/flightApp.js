// // var flightApp = flightApp || {};

// $(document).ready(function() {
//   // Templates
//   // flightApp.templates = {
//   //   flightList: $('#flight-template').html(),
//   //   flightSelection: $('#flight-single-template').html(),
//   //   seatSelection: $('#seat-template').html(),
//   // };

//   // Router
//   flightApp.AppRouter = Backbone.Router.extend({
//     routes: {
//       '': 'index',
//       // '/:origin/:destination' : 'showFlights',
//       'temp' : 'tempMethod'
//     },
//     tempMethod: function () {
//       console.log("temp");
//     }
//     // ,
//     // index: function(){
//     //   var appView = new flightApp.AppView({ collection: flightApp.posts });
//     //   appView.render();
//     // },
//     // showSeats: function(id) {
//     //   var seat = flightApp.
//     //   var view = new flightApp.singlePostView({ model: post });
//     //   post.fetch({
//     //     success: function () {
//     //       view.render();
//     //     }
//       });
//     }
//   });

//   // flightApp.posts = new flightApp.Flight();
//   // flightApp.posts.fetch({
//   //   // success: function () {}
//   // });
//   flightApp.router = new flightApp.AppRouter();
//   Backbone.history.start();


// });

$(document).ready(function() {

var templates = {
  flightView: $('#flight-template').html(),
  flightListView: $('#flight-single-template').html()
};

var FlightView = Backbone.View.extend({
  el: 'body',
  events: {
    'submit .search-form' : "load"
  },
  render: function () {
    this.$el.find('.page').html('something should show here');
  },
  load: function () {
    alert("need to compile template");
    var origin = this.$('#origin').val();
    var destination = this.$('#destination').val();
    this.$el.find('.page').html(origin + " " + destination);
    var url = [
        '/flights',
        encodeURIComponent(origin),
        encodeURIComponent(destination)
    ].join('/') + ".json";
    var template = Handlebars.compile( templates.flightView );
    this.$el.find('.page').append(template);
    $.ajax({
          url: url,
          method: 'get'
      }).done(function (results) {
          alert("Result returned");
          var resultTemplate = Handlebars.compile( templates.flightListView );
          _.each(results, function(result){
            $('#flight-selection').append(resultTemplate( result ));
            $('#flight-selection').reset()
          });
      }).error(function () {
          alert('this is error');
      });
    return false;
  }
});






  var Router = Backbone.Router.extend({
    routes: {
      'temp' : 'tempMethod'
    }
  });
  var flightView = new FlightView();
  var router = new Router();
  router.on('route:tempMethod', function(){
    flightView.render();
  });
  Backbone.history.start();

});