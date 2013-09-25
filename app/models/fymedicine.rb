class Fymedicine < ActiveRecord::Base
  belongs_to :supervisor
  belongs_to :firstyear
end
