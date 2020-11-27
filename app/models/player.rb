class Player < ApplicationRecord
    validates :uni_num, presence: true
    validates :name, presence: true, length: {maximum: 50}
    validates :payment, numericality: { only_integer: true, less_than: 13 }
end
