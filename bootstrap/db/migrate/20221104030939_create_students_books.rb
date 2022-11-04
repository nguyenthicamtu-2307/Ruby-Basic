class CreateStudentsBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :students_books do |t|
      t.string :Ma_HS
      t.string :Ten_HS
      t.string :Lop
      t.string :Ma_Sach
      t.string :Ten_Sach
      t.string :Ten_TacGia
      t.string :Tu_Sach
      t.string :So_BM
      t.timestamp :NgayMuon
      t.timestamp :NgayTra
      t.integer :So_Ngay

      t.timestamps
    end
  end
end
