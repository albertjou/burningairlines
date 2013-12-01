var flightApp = flightApp || {

};

flightApp.Flights = Backbone.Model.extend({
  urlRoot: '/flights',
  defaults: {
    flight_id: "",
    user_id: "",
    meal: "",
    seat_number: "",
    notes: ""
  }

});

flightApp.Flights = Backbone.Collection.extend({
  model: flightApp.Reservation,
  url: '/flight'
})