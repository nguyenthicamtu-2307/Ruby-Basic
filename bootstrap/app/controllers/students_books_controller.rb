class StudentsBooksController < ApplicationController
  before_action :set_students_book, only: %i[ show edit update destroy ]

  # GET /students_books or /students_books.json
  def index
    @students_books = StudentsBook.all
  end

  # GET /students_books/1 or /students_books/1.json
  def show
  end

  # GET /students_books/new
  def new
    @students_book = StudentsBook.new
  end

  # GET /students_books/1/edit
  def edit
  end

  # POST /students_books or /students_books.json
  def create
    @students_book = StudentsBook.new(students_book_params)

    respond_to do |format|
      if @students_book.save
        format.html { redirect_to students_book_url(@students_book), notice: "Students book was successfully created." }
        format.json { render :show, status: :created, location: @students_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @students_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students_books/1 or /students_books/1.json
  def update
    respond_to do |format|
      if @students_book.update(students_book_params)
        format.html { redirect_to students_book_url(@students_book), notice: "Students book was successfully updated." }
        format.json { render :show, status: :ok, location: @students_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @students_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students_books/1 or /students_books/1.json
  def destroy
    @students_book.destroy

    respond_to do |format|
      format.html { redirect_to students_books_url, notice: "Students book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_students_book
      @students_book = StudentsBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def students_book_params
      params.require(:students_book).permit(:Ma_HS, :Ten_HS, :Lop, :Ma_Sach, :Ten_Sach, :Ten_TacGia, :Tu_Sach, :So_BM, :NgayMuon, :NgayTra, :So_Ngay)
    end
end
