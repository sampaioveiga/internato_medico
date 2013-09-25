class Fychoice < ActiveRecord::Base
  belongs_to :supervisor
  belongs_to :firstyear
  belongs_to :fyoption
end
