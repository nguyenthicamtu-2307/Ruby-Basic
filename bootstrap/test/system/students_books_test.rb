require "application_system_test_case"

class StudentsBooksTest < ApplicationSystemTestCase
  setup do
    @students_book = students_books(:one)
  end

  test "visiting the index" do
    visit students_books_url
    assert_selector "h1", text: "Students books"
  end

  test "should create students book" do
    visit students_books_url
    click_on "New students book"

    fill_in "Lop", with: @students_book.Lop
    fill_in "Ma hs", with: @students_book.Ma_HS
    fill_in "Ma sach", with: @students_book.Ma_Sach
    fill_in "Ngaymuon", with: @students_book.NgayMuon
    fill_in "Ngaytra", with: @students_book.NgayTra
    fill_in "So bm", with: @students_book.So_BM
    fill_in "So ngay", with: @students_book.So_Ngay
    fill_in "Ten hs", with: @students_book.Ten_HS
    fill_in "Ten sach", with: @students_book.Ten_Sach
    fill_in "Ten tacgia", with: @students_book.Ten_TacGia
    fill_in "Tu sach", with: @students_book.Tu_Sach
    click_on "Create Students book"

    assert_text "Students book was successfully created"
    click_on "Back"
  end

  test "should update Students book" do
    visit students_book_url(@students_book)
    click_on "Edit this students book", match: :first

    fill_in "Lop", with: @students_book.Lop
    fill_in "Ma hs", with: @students_book.Ma_HS
    fill_in "Ma sach", with: @students_book.Ma_Sach
    fill_in "Ngaymuon", with: @students_book.NgayMuon
    fill_in "Ngaytra", with: @students_book.NgayTra
    fill_in "So bm", with: @students_book.So_BM
    fill_in "So ngay", with: @students_book.So_Ngay
    fill_in "Ten hs", with: @students_book.Ten_HS
    fill_in "Ten sach", with: @students_book.Ten_Sach
    fill_in "Ten tacgia", with: @students_book.Ten_TacGia
    fill_in "Tu sach", with: @students_book.Tu_Sach
    click_on "Update Students book"

    assert_text "Students book was successfully updated"
    click_on "Back"
  end

  test "should destroy Students book" do
    visit students_book_url(@students_book)
    click_on "Destroy this students book", match: :first

    assert_text "Students book was successfully destroyed"
  end
end
