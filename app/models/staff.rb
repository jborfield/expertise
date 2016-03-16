class Staff < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :skillsets
	has_many :tools, :through => :skillsets
	belongs_to :office
	belongs_to :department
	has_and_belongs_to_many :projects

	def name_full
		name = name_first + ' ' + name_last
	end

	def tenure
	  now = Time.now.utc.to_date
	  now.year - start.year - (start.to_date.change(:year => now.year) > now ? 1 : 0)
	end

end