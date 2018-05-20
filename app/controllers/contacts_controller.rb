class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Зоявка отправлено."
      redirect_to new_contact_path
    else
      flash[:danger] = "Ошибка: одно или несколько полей пустые."
      redirect_to new_contact_path
    end
  end
  
  private
  def contact_params
    params.require(:contact).permit(:company, :name, :email, :comments)
  end
end