class ContactsController < ApplicationController
  
  def index
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      # TODO send message here
      flash[:notice] = "Email has been sent!"
      redirect_to contacts_path
    else
      render :index
    end
  end
  
end
