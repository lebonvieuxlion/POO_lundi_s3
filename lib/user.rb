require "pry"

class User						#on crée la classe User --> ici on écrit donc class et pas def

	attr_accessor :email

	attr_accessor :name

	@@user_array = []
	@@array_id_user = []



	def initialize(email_to_save)

		@email = email_to_save
		@@user_array << email_to_save
		@@array_id_user << self
		

	end



	def self.all

		return @@user_array

	end

	def self.find_by_email(email)

		index_email = @@user_array.index(email)

		return @@array_id_user[index_email]


	end



end 


binding.pry

