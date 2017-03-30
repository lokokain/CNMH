require 'bcrypt'
class User < ApplicationRecord

	
	validates_presence_of :usuario ,:contraseña


	def self.authenticate(usuario, contraseña)
			user = User.where(usuario: usuario).first
			if user && user.contraseña == (contraseña)
			user
			else
			nil
	end
	end
	

	def password
    @contraseña ||= Password.new(password_hash)
 end

 def password=(contraseña)
    @contraseña = Password.create(contraseña)
    self.password_hash = @contraseña
 end


end
