class InternshipName < ActiveRecord::Base
	has_many :interns, dependent: :nullify
end