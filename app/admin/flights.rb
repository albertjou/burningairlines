ActiveAdmin.register Flight do
  index do
    column "Leaving at", :date_time
    column :origin
    column :destination
    default_actions
  end



  show do |ad|
    attributes_table do
      row :origin
      row :destination
    end
      render "passenger_list"
  end

  filter :plane, :collection => proc {(Plane.all).map{|p| [p.model_number, p.id]}}
end