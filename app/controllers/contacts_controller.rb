class ContactsController < ApplicationController
  
  def show
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid? && ContactMailer.send_email(@contact).deliver
      flash[:notice] = "Email has been sent!"
      redirect_to root_path
    else
      show_errors(@contact)
      render :show
    end
  end
  
end
