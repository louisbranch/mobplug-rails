module ApplicationHelper
  
  def is_controller_active?(controller)
    if controller.include?(params[:controller])
      {:id => "tab_active"}
    end
  end
  
end
