class Fychoice < ActiveRecord::Base
  belongs_to :supervisor
  belongs_to :firstyear
  belongs_to :fyoption
  belongs_to :healthcareunit
end
