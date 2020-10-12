class Employee < ApplicationRecord
    belongs_to :company
    has_many :offices, through: :companies
    validates :name, presence: true
    validates :title, presence: true
    validates :company_id, presence: true
    validates :name, length: { minimum: 5 }

end
