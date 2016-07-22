class ContactsController < ApplicationController
  protect_from_forgery
  after_create :notify_new_lead

  def create
    @contact = Contact.create contact_params
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

  def notify_new_lead
    byebug
  end

end
