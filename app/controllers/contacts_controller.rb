class ContactsController < ApplicationController
  protect_from_forgery

  def create
    @contact = Contact.create contact_params
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end



end
