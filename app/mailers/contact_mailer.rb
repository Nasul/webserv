class ContactMailer < ActionMailer::Base
  default to: 'tj.khujand@gmail.com'
  
  def contact_email(company, name, email, body)
    @company = company
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: "Сообщение о Форме Заявки")
  end
end