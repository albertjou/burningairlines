ActiveAdmin.register Flight do
  index do
    column :plane_id
    column "Leaving at", :date_time
    column :origin
    column :destination
    default_actions
  end
end
