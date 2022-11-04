require "test_helper"

class StudentsBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @students_book = students_books(:one)
  end

  test "should get index" do
    get students_books_url
    assert_response :success
  end

  test "should get new" do
    get new_students_book_url
    assert_response :success
  end

  test "should create students_book" do
    assert_difference("StudentsBook.count") do
      post students_books_url, params: { students_book: { Lop: @students_book.Lop, Ma_HS: @students_book.Ma_HS, Ma_Sach: @students_book.Ma_Sach, NgayMuon: @students_book.NgayMuon, NgayTra: @students_book.NgayTra, So_BM: @students_book.So_BM, So_Ngay: @students_book.So_Ngay, Ten_HS: @students_book.Ten_HS, Ten_Sach: @students_book.Ten_Sach, Ten_TacGia: @students_book.Ten_TacGia, Tu_Sach: @students_book.Tu_Sach } }
    end

    assert_redirected_to students_book_url(StudentsBook.last)
  end

  test "should show students_book" do
    get students_book_url(@students_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_students_book_url(@students_book)
    assert_response :success
  end

  test "should update students_book" do
    patch students_book_url(@students_book), params: { students_book: { Lop: @students_book.Lop, Ma_HS: @students_book.Ma_HS, Ma_Sach: @students_book.Ma_Sach, NgayMuon: @students_book.NgayMuon, NgayTra: @students_book.NgayTra, So_BM: @students_book.So_BM, So_Ngay: @students_book.So_Ngay, Ten_HS: @students_book.Ten_HS, Ten_Sach: @students_book.Ten_Sach, Ten_TacGia: @students_book.Ten_TacGia, Tu_Sach: @students_book.Tu_Sach } }
    assert_redirected_to students_book_url(@students_book)
  end

  test "should destroy students_book" do
    assert_difference("StudentsBook.count", -1) do
      delete students_book_url(@students_book)
    end

    assert_redirected_to students_books_url
  end
end
