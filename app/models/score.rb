require 'digest/sha1'

class LegitValidator < ActiveModel::Validator
	def validate(record)
		secret_salt = "hello world"
		s = record.player + record.score.to_s + record.ts + secret_salt
		digest = Digest::SHA1.hexdigest(s)

		if (record.digest != digest)
			record.errors[:base] << "Score submission is invalid."
		end
	end
end

class Score < ActiveRecord::Base
	attr_accessor :digest
	validates :player, :presence => true, :uniqueness => {:scope => [:score, :ts]}
	validates :score, :presence => true, :numericality => true
	validates :ts, :presence => true 

	validates_with LegitValidator
end


