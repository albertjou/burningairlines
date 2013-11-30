ActiveAdmin.register Flight do
  index do
    column :plane_id
    column "Leaving at", :date_time
    column :origin
    column :destination
    default_actions
  end

  show do
    h3 flight.origin
    h3 flight.destination
    h3 flight.date_time

    render "passenger_list"
  end
end