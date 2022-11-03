class Person < ApplicationRecord
    belongs_to( :house,
    class_name: 'Person',
    foreign_key: :house_id,
    primary_key: :id)
    optional: true

    validates :name, presence: true
end

