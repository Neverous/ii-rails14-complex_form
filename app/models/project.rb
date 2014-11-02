class Project < ActiveRecord::Base
    has_and_belongs_to_many :categories
    has_many                :tasks,         dependent: :destroy
    has_many                :milestones,    dependent: :destroy

    validates :title, :description, :category_ids,  presence: true
    validates :title,                               uniqueness: true
    validates :title,                               length: { maximum: 256 }

    accepts_nested_attributes_for :milestones,
        allow_destroy:  true,
        reject_if:      :all_blank

    accepts_nested_attributes_for :tasks,
        allow_destroy:  true,
        reject_if:      :all_blank

    def to_s
        return title
    end
end
