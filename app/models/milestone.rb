class Milestone < ActiveRecord::Base
    belongs_to              :project
    has_and_belongs_to_many :tasks

    validates :title, :description, :project_id,    presence: true
    validates :title,                               uniqueness: true
    validates :title,                               length: { maximum: 256 }

    accepts_nested_attributes_for :tasks,
        allow_destroy:  true,
        reject_if:      :all_blank

    def to_s
        return title
    end
end
