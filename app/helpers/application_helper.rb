module ApplicationHelper
  def authentication_menu
    #built a list of links depending on the users permissions
    links = ""
    if @user_logged_in.present?
      links += "<li> #{link_to('Edit Profile', edit_user_registration_path )}</li>" +
      links += "<li> #{link_to('Logout ' + @user_logged_in.username, destroy_user_session_path, :method => 'delete', :confirm => 'Are you sure?')}</li>"
    else
      links += "<li> #{link_to('Create Account', new_user_registration_path)}</li>" +
      links += "<li> #{link_to('User Login', new_user_session_path)}</li>"
    end

    links
  end
end
