class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :bookclub, class_name: 'Bookclub', foreign_key: :bookclub_id, required: false, dependent: :destroy

  has_one :created_bookclub, class_name: 'Bookclub', foreign_key: :user_id, required: false
  has_many :books
  has_many :giving_swaps, class_name: 'Swap', source: :giving_user
  has_many :receiving_swaps, class_name: 'Swap', source: :receiving_user, foreign_key: 'user_2_id'
  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def swaps
    Swap.where(id: [giving_swaps.ids, receiving_swaps.ids].flatten)
  end
end
