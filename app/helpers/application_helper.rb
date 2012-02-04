module ApplicationHelper

  def is_controller_active?(controller)
    if controller.include?(params[:controller])
      "active"
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

  def error_messages_for(object)
    render :partial => 'shared/error_messages', :locals => {:object => object}
  end

end
