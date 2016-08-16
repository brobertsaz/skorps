class ContactsController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!, only: :index

  def index
    @contacts = Contact.all
    render layout: "dashboard"
  end

  def create
    @contact = Contact.create contact_params
    AdminMailer.notify_new_contact(@contact.id).deliver_later
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message, :phone)
  end



end
