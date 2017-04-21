class CampingMailer < ApplicationMailer
  def creation_confirmation(camping)
    @camping = camping

    mail(
      to:       @camping.user.email,
      subject:  "Seu acampamento foi #{@camping.camping_name} criado com sucesso!"
    )
  end
end
