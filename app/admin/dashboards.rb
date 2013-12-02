ActiveAdmin.register_page "Dashboard" do
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "New Users" do
          table_for User.order('created_at desc').limit(10) do
            column :first_name do |user|
              user.first_name
            end
            column :last_name do |user|
              user.last_name
            end
            column :email do |user|
              mail_to user.email
            end
          end
        end
      end
    end
  end
end