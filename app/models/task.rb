class Task < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_rich_text :description
end
