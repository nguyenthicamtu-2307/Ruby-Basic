class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :student_id
      t.string :student_name

      t.timestamps
    end
  end
end
