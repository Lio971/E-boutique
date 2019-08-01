class PrivateMessage < ApplicationRecord
    t.belongs_to :sender
    t.has_many :recipients
end
