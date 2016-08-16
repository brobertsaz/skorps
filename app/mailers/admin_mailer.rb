class AdminMailer < ApplicationMailer
  def notify_new_contact(contact_id)
    @contact = Contact.find contact_id
    mail to: 'bob@skorpionsoftware.com', subject: "New Lead Created"
  end
end