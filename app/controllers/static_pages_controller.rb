class StaticPagesController < ApplicationController
	before_action :require_login

	def index
		# alerta se faltar nota com mais de 60 dias de atraso
		@internships_alert = Internship.where("data_fim < ? AND nota is ?", Date.today - 60, nil )
		@fymedicines_alert = Fymedicine.where("data_fim < ? AND nota is ?", Date.today - 60, nil )
		@fyprimaries_alert = Fyprimary.where("data_fim < ? AND nota is ?", Date.today - 60, nil )
		@fycirurgies_alert = Fycirurgy.where("data_fim < ? AND nota is ?", Date.today - 60, nil )
		@fypediatries_alert = Fypediatry.where("data_fim < ? AND nota is ?", Date.today - 60, nil )
		@fychoices_alert = Fychoice.where("data_fim < ? AND nota is ?", Date.today - 60, nil )
		@alerts_number = @internships_alert.count + @fymedicines_alert.count + @fyprimaries_alert.count + @fycirurgies_alert.count + @fypediatries_alert.count + @fychoices_alert.count

		#present year interns
		#@present_year_internships = Internship.where(data_inicio: (Time.now.midnight - 1.year)..Time.now.midnight + 1.year)
		#@present_year_internships += Internship.where(data_fim: (Time.now.midnight - 1.year)..Time.now.midnight + 1.year)
		#@present_year_internships = @present_year_internships.uniq
		#@present_year_internships.sort_by { |m| m[:intern_id] }
		@internships = InternshipName.order('nome')
	end

	private
		def require_login
			unless logged_in?
				redirect_to login_path
			end
		end

		def logged_in?
			!!current_user
		end
end