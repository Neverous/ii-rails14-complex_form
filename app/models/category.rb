class Category < ActiveRecord::Base
    has_and_belongs_to_many :projects

    validates :title, presence: true
    validates :title, uniqueness: true
    validates :title, length: { maximum: 64 }

    def to_s
        return title
    end
end
