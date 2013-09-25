class Firstyear < ActiveRecord::Base
  belongs_to :intern
  has_one :fymedicine,	dependent: :destroy
  has_one :fyprimary,	dependent: :destroy
  has_one :fycirurgy,	dependent: :destroy
  has_one :fypediatry,	dependent: :destroy
  has_one :fychoice,	dependent: :destroy

  validates :ano,
  	presence: true,
  	length: { is: 4 }
end