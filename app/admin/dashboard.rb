ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end
  end
end

# ActiveAdmin::Dashboard.build do

#     section "Upcoming Flights" do
#         table_for Flight.order("date_time desc").limit(5) do
#             column :plane_id
#             column "Leaving at", :date_time
#             column :origin
#             column :destination
#         end
#         strong { link_to "See all flights", admin_flights_path }
#     end
# end