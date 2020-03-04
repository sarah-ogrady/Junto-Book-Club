class Swap < ApplicationRecord
  belongs_to :book_given, class_name: "Book", foreign_key: 'book_1_id'
  belongs_to :book_received, class_name: "Book", foreign_key: 'book_2_id', optional: true
  belongs_to :giving_user, class_name: "User", foreign_key: 'user_id'
  belongs_to :receiving_user, class_name: "User", foreign_key: 'user_2_id'
end
