class ContactsController < ApplicationController


  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        format.js { render 'success' } 
      else
        format.js { render 'failure' } 
      end
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email)
  end
end
