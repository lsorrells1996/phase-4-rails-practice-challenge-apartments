class Tenant < ApplicationRecord
    has_many :apartments
    has_many :leases, through: :apartments

    validates :age, numericality: {greater_than_or_equal_to: 18}
end
