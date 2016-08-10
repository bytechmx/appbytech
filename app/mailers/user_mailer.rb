class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.registration_confirmation.subject
  #
  def registration_confirmation(voluntario)
  	@voluntario = voluntario


    mail to: @voluntario.correo_electronico, subject: "Confirmación de registro"
  end
end
