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

	def is_past																			#vérifie à l'aide d'une condition if si l'évènement est passé
																						#et renvoie true si c'est le cas
		if @start_date < Time.now

			return true

		else 
			false

		end

	end


	def is_future												#on invoque l'inverse la fonction is_past grâce au point d'exclamation car elle elle
																#est l'exact inverse cette dernière
		!self.is_past

	end


	def is_soon

		if  @start_date - 30 * 60 < Time.now					#check si l'évènement est à moins de 30 min du début de la date de début

			return true

		else

			false
		end
	end


	def to_s

		attendees_to_s = @attendees.join(", ")					#Appelée sur une instance de classe elle permet de formater en string les informations sur cette dernière

		puts "Titre : #{@title}"
		puts "Date de début : #{@start_date}"
		puts "Durée : #{@length} minutes"
		puts "Invités : #{attendees_to_s}"

	end

Binding.pry


end


