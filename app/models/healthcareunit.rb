class Healthcareunit < ActiveRecord::Base
	has_many :services, dependent: :destroy
end
