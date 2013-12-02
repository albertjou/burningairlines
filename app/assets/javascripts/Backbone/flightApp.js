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
  flightListView: $('#flight-single-template').html(),
  flightSeatView: $('#seat-template').html()
};

var FlightView = Backbone.View.extend({
  el: 'body',
  events: {
    'submit .search-form' : "load"
  },
  render: function () {
  },
  load: function () {
    var origin = this.$('#origin').val();
    var destination = this.$('#destination').val();
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
          $('.search-form')[0].reset();
          _.each(results, function(result){
            var flightListView = new FlightListView({model: result});
            flightListView.render();
          });
      }).error(function () {
          alert('this is error');
      });
    return false;
  }
});

var FlightListView = Backbone.View.extend({
  el: '#flight-selection',
  events: {
    'click tbody' : 'seatSelection'
  },
  render: function () {
    var resultTemplate = Handlebars.compile( templates.flightListView );
    this.$el.append(resultTemplate( this.model ));
  },
  seatSelection: function () {
    // Need to first pass the selected into the router
    console.log("seatSelection clicked")
    router.navigate('flights/' + this.model.id, true);
  }

});

var SeatListView = Backbone.View.extend({
  el: '.page',
  render: function () {

  }
});

// Model
 var Flight = Backbone.Model.extend({
  urlRoot: '/flights'
});

  var Router = Backbone.Router.extend({
    routes: {
      'temp' : 'tempMethod',
      'flights/:id' : 'fullFlightView'
    }
  });
  var flightView = new FlightView();
  var router = new Router();
  router.on('route:tempMethod', function(){
    flightView.render();
  });
  router.on('route:fullFlightView', function (id) {
    var flight = new Flight({id: id});
    var template = Handlebars.compile( templates.flightSeatView );
    flight.fetch({
      success: function (data){
        seatArray = data.attributes.seats;
        // Need to find some way to remove the first value
        _.each(seatArray, function(num){
          $('.page').append(template({num: num}));
        });
      }
    });
  });
  Backbone.history.start();

});