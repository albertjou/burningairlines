#Clear database
Plane.destroy_all
Flight.destroy_all
User.destroy_all
Reservation.destroy_all


# Planes
plane1 = Plane.create(:model_number => "Boeing 787", :status => "operational", :seats => 250)
plane2 = Plane.create(:model_number => "Airbus 380", :status => "operational", :seats => 525)
plane3 = Plane.create(:model_number => "Boeing 777", :status => "operational", :seats => 400)
plane4 = Plane.create(:model_number => "Boeing 747", :status => "operational", :seats => 450)
plane5 = Plane.create(:model_number => "Airbus 320", :status => "operational", :seats => 150)

# Flights
flight1 = Flight.create(:date_time => "2013-12-01 17:44:11 +1100", :origin => "SYD", :destination => "LAX")
flight2 = Flight.create(:date_time => "2013-12-02 17:44:11 +1100", :origin => "MEL", :destination => "JNB")
flight3 = Flight.create(:date_time => "2013-12-03 17:44:11 +1100", :origin => "SYD", :destination => "TPE")
flight4 = Flight.create(:date_time => "2013-12-04 17:44:11 +1100", :origin => "MEL", :destination => "JFK")

flight5 = Flight.create(:date_time => "2013-12-03 17:44:11 +1100", :origin => "LAX", :destination => "SYD")
flight6 = Flight.create(:date_time => "2013-12-04 17:44:11 +1100", :origin => "JNB", :destination => "MEL")
flight7 = Flight.create(:date_time => "2013-11-05 17:44:11 +1100", :origin => "TPE", :destination => "SYD")
flight8 = Flight.create(:date_time => "2013-11-06 17:44:11 +1100", :origin => "JFK", :destination => "MEL")

# Reservations
reservation1 = Reservation.create(:meal => "beef", :notes => "Allergic to life", :seat_number => "9")
reservation2 = Reservation.create(:meal => "beef", :notes => "Frequent flier", :seat_number => "15")
reservation3 = Reservation.create(:meal => "chicken", :notes => "First time flier", :seat_number => "25")
reservation4 = Reservation.create(:meal => "chicken", :notes => "VIP", :seat_number => "99")
reservation5 = Reservation.create(:meal => "chicken", :notes => "Underage", :seat_number => "12")
reservation6 = Reservation.create(:meal => "vegan", :notes => "Elderly", :seat_number => "12")
reservation7 = Reservation.create(:meal => "vegan", :notes => "Allergic to life", :seat_number => "35")
reservation8 = Reservation.create(:meal => "vegan", :notes => "Allergic to life", :seat_number => "41")
reservation9 = Reservation.create(:meal => "vegetarian", :notes => "FBI", :seat_number => "14")
reservation10 = Reservation.create(:meal => "vegetarian", :notes => "Allergic to life", :seat_number => "8")
reservation11 = Reservation.create(:meal => "vegetarian", :notes => "I like movies", :seat_number => "45")
reservation12 = Reservation.create(:meal => "beef", :notes => "Allergic to life", :seat_number => "81")

# Users
user1 = User.create(:email => "aaa@generalassemb.ly", :password => "12345678", :password_confirmation => "12345678", :title => "Mr", :mobile => "0400123456", :first_name => "John", :last_name => "Person", :address => "608 Harris st, Ultimo, NSW 2004")
user2 = User.create(:email => "bbb@generalassemb.ly", :password => "12345678", :password_confirmation => "12345678", :title => "Mrs", :mobile => "0400123457", :first_name => "Jane", :last_name => "Person", :address => "608 Harris st, Ultimo, NSW 2004")
user3 = User.create(:email => "ccc@generalassemb.ly", :password => "12345678", :password_confirmation => "12345678", :title => "Miss", :mobile => "0400123458", :first_name => "Jess", :last_name => "Person", :address => "608 Harris st, Ultimo, NSW 2004")
user4 = User.create(:email => "ddd@generalassemb.ly", :password => "12345678", :password_confirmation => "12345678", :title => "Dr", :mobile => "0400123459", :first_name => "Jill", :last_name => "Person", :address => "608 Harris st, Ultimo, NSW 2004")

# Creating relations

flight1.plane_id = plane1.id
flight2.plane_id = plane2.id
flight3.plane_id = plane3.id
flight4.plane_id = plane4.id
flight5.plane_id = plane5.id
flight6.plane_id = plane2.id
flight7.plane_id = plane3.id
flight8.plane_id = plane4.id

plane1.flights << flight1
plane2.flights << flight2
plane2.flights << flight6
plane3.flights << flight3
plane3.flights << flight7
plane4.flights << flight4
plane4.flights << flight8
plane5.flights << flight5

reservation1.user_id = user1.id
reservation1.flight_id = flight1.id
reservation2.user_id = user1.id
reservation2.flight_id = flight2.id
reservation3.user_id = user1.id
reservation3.flight_id = flight3.id
reservation4.user_id = user1.id
reservation4.flight_id = flight4.id
reservation5.user_id = user2.id
reservation5.flight_id = flight1.id
reservation6.user_id = user2.id
reservation6.flight_id = flight5.id
reservation7.user_id = user2.id
reservation7.flight_id = flight6.id
reservation8.user_id = user2.id
reservation8.flight_id = flight7.id
reservation9.user_id = user3.id
reservation9.flight_id = flight1.id
reservation10.user_id = user3.id
reservation10.flight_id = flight8.id
reservation11.user_id = user3.id
reservation11.flight_id = flight5.id
reservation12.user_id = user4.id
reservation12.flight_id = flight4.id

user1.reservations << reservation1
user1.reservations << reservation2
user1.reservations << reservation3
user1.reservations << reservation4
user2.reservations << reservation5
user2.reservations << reservation6
user2.reservations << reservation7
user2.reservations << reservation8
user3.reservations << reservation9
user3.reservations << reservation10
user3.reservations << reservation11
user4.reservations << reservation12

flight1.reservations << reservation1
flight1.reservations << reservation5
flight1.reservations << reservation9
flight2.reservations << reservation2
flight3.reservations << reservation3
flight4.reservations << reservation4
flight4.reservations << reservation12
flight5.reservations << reservation6
flight5.reservations << reservation11
flight6.reservations << reservation7
flight7.reservations << reservation8
flight8.reservations << reservation10






