class Vote < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  belongs_to :votable, polymorphic: true
  validates :user, uniqueness: { scope: :votable_id,
    message: "can only vote once." }
end
