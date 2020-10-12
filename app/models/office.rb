class Office < ApplicationRecord
    belongs_to :building
    belongs_to :company
    has_many :employees, through: :company
    validates :building_id, presence: true
    validates :company_id, presence: true
    validates :floor, presence: true
end
