class InicioMailer < ApplicationMailer
    def inicio_send(user)
     @user = user
     mail to: user.email, subject: "Bienvenida", from: "example@gmail.com"
    end
end
