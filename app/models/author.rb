class Author < ApplicationRecord
    validates :name, presence: true
    # validates :name, presence: true, uniqueness: true {case_sensitive: false}
    validates :name, uniqueness: true
    validates :phone_number, length: { is: 10 }
end
