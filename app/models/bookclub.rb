class Bookclub < ApplicationRecord

  after_create :add_creator_as_member

  has_many :users, dependent: :destroy
  belongs_to :creator, class_name: 'User', foreign_key: :user_id
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def add_creator_as_member
    creator.update(bookclub: self)
  end
end
