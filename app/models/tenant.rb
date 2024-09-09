class Tenant < ApplicationRecord
	validates :name, :subdomain, presence: true
	has_many :users

end
