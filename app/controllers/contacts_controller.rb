class ContactsController < ApplicationController

  def show
    @title = 'Get in touch!'
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid? && ContactMailer.send_email(@contact).deliver
      redirect_to root_path, :notice => "Your message has been sent!"
    else
      render :show
    end
  end

end
