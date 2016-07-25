class ContactsController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!

  def index
    @contacts = Contact.all
    render layout: "dashboard"
  end

  def create
    @contact = Contact.create contact_params
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end



end
