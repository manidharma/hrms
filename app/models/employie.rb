class Employie < ApplicationRecord
	has_one_attached :image
	has_one_attached :certificate
	has_one_attached :proof

	def resize
		return self.proof.variant(resize: "200x200")
	end

	validates_presence_of :date_of_birth, message: "Enter date of birth"
	validates :name,format: {with: /\A[a-zA-Z]+\z/}, length: { minimum: 2, message: "only allows letters" }
	validates_presence_of :address, length: { minimum: 2, message: "must be above 2 letters" } 
	validates_presence_of :address1, length: { minimum: 2, message: "must be above 2 letters" } 
	validates_presence_of :city, length: { minimum: 2, message: "must be above 2 letters" } 
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "invalid E-mail id"
	validates :pincode, length: { is: 6, message: "enter your city code" }
	validates :phone_num, length: { is: 10, message: "only allows letters" } 
	validates_presence_of :image, message: "Please upload your photo"
	validates_presence_of :certificate, message: "Please upload your highest education certificate"
	validates_presence_of :proof, message: "Please upload your Adharprof"
end