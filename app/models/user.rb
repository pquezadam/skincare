class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         after_create :inicio_send
         def inicio_send
            InicioMailer.inicio_send(self).deliver
         end
end
