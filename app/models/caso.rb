class Caso < ApplicationRecord

	
	has_many :informes

	validates_presence_of :radicado
	validates_uniqueness_of :radicado
end
