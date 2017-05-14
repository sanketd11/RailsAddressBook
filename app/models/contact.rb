class Contact < ApplicationRecord
	validates :firstname,:lastname, :address, :email, presence: true	
	validates :phone, presence: true, numericality: true , length: {is: 10}
	validates :zip, numericality: true 
	validate :valid_email

	private 
	def valid_email
		unless email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
      		errors[:email] << ("#{email} is not an email")	
      	end	
	end
                    
end
