class Comment < ApplicationRecord
  belongs_to :hiyoko
  belongs_to :user
  validates :body, presence: true
  validates :hiyoko_id, presence: true
end
