class Category < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    belongs_to :user
    has_many :tasks, dependent: :destroy
end
