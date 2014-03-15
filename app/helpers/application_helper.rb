module ApplicationHelper
  
  def get_user_name(user)
    if user
      user.name.split()[0]
    end
  end
  
  
end
