class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :bookclub, required: false
  has_many :owners
  has_many :giving_swaps, class_name: 'Swap', source: :giving_user
  has_many :receiving_swaps, class_name: 'Swap', source: :receiving_user, foreign_key: 'user_2_id'
  has_one_attached :photo

  def swaps
    Swap.where(id: [giving_swaps.ids, receiving_swaps.ids].flatten)
  end
end
