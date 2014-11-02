class CreateModels < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string  :title
      t.text    :description

      t.timestamps
    end

    create_table :categories do |t|
      t.string  :title

      t.timestamps
    end

    create_table :categories_projects, id: false do |t|
        t.belongs_to    :category
        t.belongs_to    :project
    end

    create_table :tasks do |t|
      t.string      :title
      t.text        :description
      t.belongs_to  :project, index: true

      t.timestamps
    end

    create_table :milestones do |t|
      t.string      :title
      t.text        :description
      t.belongs_to  :project, index: true

      t.timestamps
    end

    create_table :projects_milestones, id: false do |t|
        t.belongs_to    :project
        t.belongs_to    :milestone
    end

    create_table :milestones_tasks, id: false do |t|
        t.belongs_to    :milestone
        t.belongs_to    :task
    end
  end
end
