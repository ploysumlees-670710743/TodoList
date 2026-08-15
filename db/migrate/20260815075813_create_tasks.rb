class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :completed
      t.validates :title, presence: true //ไม่ใส่ตรงนี้ได้

      t.timestamps
    end
  end
end
