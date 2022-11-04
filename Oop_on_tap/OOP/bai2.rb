class TaiLieu
    attr_accessor :maTaiLieu_253, :tenNXB_253, :soBanPhatHanh_253
    def initialize maTaiLieu_253, tenNXB_253, soBanPhatHanh_253
        @maTaiLieu_253 = maTaiLieu_253
        @tenNXB_253 = tenNXB_253
        @soBanPhatHanh_253 = soBanPhatHanh_253
    end
    def display
        puts "Mã tài liệu #@maTaiLieu_253"
        puts "Tên NXB #@tenNXB_253"
        puts "Số bản phát hành #@soBanPhatHanh_253"
    end
end
class Sach < TaiLieu
    attr_accessor :tenTacGia_253, :soTrang_253
    def initialize maTaiLieu_253, tenNXB_253, soBanPhatHanh_253, tenTacGia_253, soTrang_253
        super maTaiLieu_253, tenNXB_253, soBanPhatHanh_253
        @tenTacGia_253 = tenTacGia_253
        @soTrang_253 = soTrang_253
    end
    def display 
        super
        puts "Tên tác giả #@tenTacGia_253"
        puts "Số trang #@soTrang_253"
    end
end
class TapChi < TaiLieu
    attr_accessor :soPhatHanh_253, :thangPhatHanh_253
    def initialize maTaiLieu_253, tenNXB_253, soBanPhatHanh_253, soPhatHanh_253, thangPhatHanh_253
        super maTaiLieu_253, tenNXB_253, soBanPhatHanh_253
        @soPhatHanh_253 = soPhatHanh_253
        @thangPhatHanh_253 = thangPhatHanh_253
    end
    def display 
        super
        puts "Số phát hành #@soPhatHanh_253"
        puts "Tháng phát hành #@thangPhatHanh_253"
    end
end
class Bao < TaiLieu
    attr_accessor :ngayPhatHanh_253
    def initialize maTaiLieu_253, tenNXB_253, soBanPhatHanh_253, ngayPhatHanh_253
        super maTaiLieu_253, tenNXB_253, soBanPhatHanh_253
        @ngayPhatHanh_253 = ngayPhatHanh_253
    end
    def display 
        super
        puts "Ngày phát hành #@ngayPhatHanh_253"
    end
end
class QuanLySach
    @@qlsach=Array.new
    def addBook(qlsach)
        @@qlsach.push(qlsach)
    end
    def deleteById (id)
        deleteList = @@qlsach.delete_if {|x| x.maTaiLieu_253.chomp.eql?id}
        puts "Xoá thành công"
        puts "<---------******---------->"
    end
    def showListInforBook()
        @@qlsach.each {|qlsach| qlsach.display}
        puts ("<---------******---------->")
    end
    def timKiemNhaXuatBan(key)
        searchList = @@qlsach .select {|o| o.tenNXB_253 == key}
        searchList.each{|sl| sl.display}
        puts "<---------******---------->"
    end
end
class Main
    dem = 0
    quanLy = QuanLySach.new()
    until dem == 1 do
        puts "7. xoa"
        puts "6. in danh sach"
        puts "3. tim kiem theo nhà xuất bản"
        puts "2. them"
        puts "1. thoat"
        dem=gets
        if dem.to_i ==1
            exit
        end
        if dem.to_i == 2
            sach = Sach.new(1, "NXB Giáo dục", 100, "Kim Đồng", 200)
            tapChi = TapChi.new(2, "NXB Phương Đông", 200, "AH123", "4/2022")
            bao = Bao.new(3, "NXB An Nam", 150, "3/2021")
            quanLy.addBook(sach)
            quanLy.addBook(tapChi)
            quanLy.addBook(bao)
            puts "Thêm thành công"
            puts "<---------******---------->"
        end
        if dem.to_i == 3
            puts "NXB cần tìm là"
            NXBCT_253 = gets.chomp.to_s
            quanLy.timKiemNhaXuatBan(NXBCT_253)
        end
            if dem.to_i == 6
            puts "====DS Sách===="
            quanLy.showListInforBook()
        end
        if dem.to_i == 7
            puts ("ID can xoa la")
            iDCanXoa_253 = gets.chomp.to_s
            quanLy.deleteById(iDCanXoa_253)
        end
    end
end