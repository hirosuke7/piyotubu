class Comment < ApplicationRecord
  belongs_to :hiyoko
  validates :body, presence: true
  validates :hiyoko_id, presence: true
end
