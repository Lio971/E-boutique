class Item < ApplicationRecord
validates :title,
presence: true,
length: { in: 3..20 }

validates :description,
presence: true,
length: { in: 5..300 }

validates :price,
presence: true,
numericality: { only_integer: true,greater_than_or_equal_to: 1 }

end
