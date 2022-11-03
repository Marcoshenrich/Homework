class House < ApplicationRecord
    has_many (:persons,
    class_name: 'Person',
    foreign_key: :house_id,
    primary_key: :id)

    validates :address, presence: true
end
