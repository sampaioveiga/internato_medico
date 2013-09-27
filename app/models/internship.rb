class Internship < ActiveRecord::Base
  belongs_to :intern
  belongs_to :supervisor
  belongs_to :healthcareunit
  belongs_to :service
end
