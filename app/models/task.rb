class Task < ActiveRecord::Base
    belongs_to                :project
    has_and_belongs_to_many   :milestones

    validates :title, :description, :project_id,    presence: true
    validates :title,                               uniqueness: true
    validates :title,                               length: { maximum: 256 }

    def to_s
        return title
    end
end
