ActiveAdmin.register Plane do
  index do
    column :model_number
    column :status
    column :seats
    default_actions
  end
end
