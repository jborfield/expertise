class Tool < ActiveRecord::Base
	has_many :skillsets
	has_many :staffs, :through => :skillsets
end