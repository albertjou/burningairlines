var flightApp = flightApp || {

};

flightApp.Reservation = Backbone.Model.extend({
  urlRoot: '/reservations',
  defaults: {
    flight_id: "",
    user_id: "",
    meal: "",
    notes: ""
  }

});

flightApp.Reservations = Backbone.Collection.extend({
  model: flightApp.Reservation,
  url: '/reservations'
})