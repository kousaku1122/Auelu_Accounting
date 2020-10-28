class Player < ApplicationRecord
    validates :uni_num, presence: true
    validates :name, presence: true, length: {maximum: 50}
    validates :payment, presence: true, numericality: { only_integer: true, less_than: 12 }
    validates :payment_date, presence: true
end
