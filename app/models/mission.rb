class Mission < ApplicationRecord
  belongs_to :scientist, dependent: :destroy
  belongs_to :planet

  validates_presence_of :name, :scientist, :planet
  validates :scientist_id, uniqueness: true
end
