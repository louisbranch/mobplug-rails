module ApplicationHelper
  
  def is_controller_active?(controller)
    if controller.include?(params[:controller])
      {:id => "tab_active"}
    end
  end
  
  def title
    base_title = "luizbranco"
    if @title.nil?
      base_title
    else
      "#{base_title} :: #{@title}"
    end
  end
  
  def description
    unless @description.nil?
      @description
    end
  end
  
end
