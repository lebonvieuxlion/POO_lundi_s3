require 'time'
require 'pry'

class Event																				#définition de la classe

	attr_accessor :start_date, :length, :title, :attendees 								#définition des 4 attributs de la classe


	def initialize(date_to_set, length_to_set, title_to_set, attendees_to_set = [])		#pour chaque création d'instance on requiert 4 paramètres

		@start_date =  Time.parse(date_to_set)
		@length = length_to_set
		@title = title_to_set
		@attendees = attendees_to_set

	end


	def postpone_24h																	#décale l'event de 24h, en Ruby tout est en seconde donc on doit
		@start_date = @start_date + 60 * 60 * 24										#mutliplier par 60 (minutes) puis en heures (24)			
	end 																				



	def end_date																		#calcul fin de l'event à partir de la date de fin et de la
																						#durée (on multiplie par 60 car notre durée est en minutes)
		end_date = @start_date + (length * 60)
		return end_date

	end







end

Binding.pry

#puts Time.parse("2010-10-31 12:00")

