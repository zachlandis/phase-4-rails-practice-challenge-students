class Student < ApplicationRecord
    belongs_to :instructor 

    validates :name, :major, presence: true
    # validates :age, comparison: {greater_than_or_equal_to: 18}
end
