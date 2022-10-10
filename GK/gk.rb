class  Phuongtien
    attr_accessor :id253,:hang253,:nam253,:dong253,:gia253,:bien253,:mau253
    def initialize id253,hang253,nam253,dong253,gia253,bien253,mau253
        @id253=id253
        @hang253=hang253
        @nam253=nam253
        @dong253=dong253
        @gia253=gia253
        @bien253=bien253
        @mau253=mau253
    end
    def display
        puts "id xe: #{@id253}"
        puts "hãng xe: #{@hang253}"
        puts "Năm sản xuất: #{@nam253}"
        puts "dòng xe: #{@dong253}"
        puts "giá xe: #{@gia253}"
        puts "biển số xe: #{@bien253}"
        puts "màu xe: #{@mau253}"
    end
end
class Oto < Phuongtien
    attr_accessor :socho253,:kieudongco253,:sotuikhi253,:nhienlieu253,:ngaydangkiem253
    def initialize id253,hang253,nam253,dong253,gia253,bien253,mau253,socho253,kieudongco253,sotuikhi253,nhienlieu253,ngaydangkiem253
        super(id253,hang253,nam253,dong253,gia253,bien253,mau253)
        @socho253=socho253
        @kieudongco253=kieudongco253
        @sotuikhi253=sotuikhi253
        @nhienlieu253=nhienlieu253
        @ngaydangkiem253=ngaydangkiem253
    end
    def display
        super()
        puts "so cho ngoi: #{@socho253}"
        puts "kieu dong co : #{@socho253}"
        puts "so tui khi: #{@socho253}"
        puts "nhien lieu: #{@socho253}"
        puts "ngay dang kiem: #{@socho253}"

    end
end
class Xemay < Phuongtien
    attr_accessor :congsuat253,:dungtich253
    def initialize id253,hang253,nam253,dong253,gia253,bien253,mau253,congsuat253,dungtich253
        super(id253,hang253,nam253,dong253,gia253,bien253,mau253)
        @congsuat253=congsuat253
        @dungtich253=dungtich253
        
    end
    def display
        super()
        puts "cong suat xe : #{@congsuat253}"
        puts "dung tich : #{@dungtich253}"
    end
end
class Xetai < Phuongtien
    attr_accessor :trongtai253
    def  initialize id253,hang253,nam253,dong253,gia253,bien253,mau253,trongtai253
        super(id253,hang253,nam253,dong253,gia253,bien253,mau253)
        @trongtai253=trongtai253
        
    end
    def display
        super()
        puts "trong tai xe: #{@trongtai253}"
    end

end
class QLPTGT
    @@phuongTien = Array.new
    def addPhuongTien(phuongTien)
        @@phuongTien.push(phuongTien)
    end
    
    def searchPhuongTienByName(key)
        searchList = @@phuongTien.select {|o| o.hang253.include? key}
        searchList.each{ |sl| sl.display}
    end
    def timKiemTheoHang hang_140
        searchList = @@phuongTien.select {|o| o.hang253.include? hangsx_170}
        searchList.each{ |sl| sl.display}
    end

    def timKiemTheoMau mau_170
        searchList = @@phuongTien.select {|o| o.mau253.include? mau_170}
        searchList.each{ |sl| sl.display}
    end

    def timKiemTheoBien bienso_140
        searchList = @@phuongTien.select {|o| o.bien253.include? bienso_170}
        searchList.each{ |sl| sl.display}
    end

    def showListInforPhuongTien()
        @@phuongTien.each{ |phuongTien| phuongTien.display}
    end
    def xoaphuontien(id)
        @phuongTien.delete_if { |o| o.id_253chomp.eql?id }
        print "Đã xoá thành công!"
    end
end
class Main
    dem = 0
    quanLy = QLPTGT.new()
    until dem == 1 do
        puts "7. xoa"
        puts "6. in danh sach"
        puts "5. tim kiem theo hang"
        puts "4. tim kiem theo bien"
        puts "3. tim kiem theo mau"
        puts "2. them"
        puts "1. thoat"
        dem=gets
        if dem.to_i ==1
            exit
        end
        if dem.to_i == 2
            c1 = Phuongtien.new("1","Honda","2020", "Xe may", "50000000", "82N00959", "Den")
            c2 = Phuongtien.new(2, "Yamaha",2020, "Xe may", 50000000, "82N00959", "do")
            c3 = Phuongtien.new(3, "Tesla",2020, "Xe may", 50000000, "82N00959", "trang")
            c4 = Phuongtien.new(4, "Mec",2020, "Xe may", 50000000, "82N00959", "Den")
            c5 = Phuongtien.new(5, "BMW",2020, "Xe may", 50000000, "82N00959", "Den")
            quanLy.addPhuongTien(c1)
            quanLy.addPhuongTien(c2)
            quanLy.addPhuongTien(c3)
            quanLy.addPhuongTien(c4)
            quanLy.addPhuongTien(c5)
            puts "Them thanh cong"
        end
        if dem.to_i == 3
            puts ("Mau can tim la")
            mau253= gets.chomp.to_s
            quanLy.timKiemTheoMau(mau253)
        end
        if dem.to_i == 4
            puts ("Bien can tim la")
            bien253 = gets.chomp.to_s
            quanLy.timKiemTheoBien(bien253)
        end
        if dem.to_i == 5
            puts ("Hang can tim la")
            hang253 = gets.chomp.to_s
            quanLy.timKiemTheoHang(hang253)
        end
        if dem.to_i == 6
            puts ("====Danh Sach xe")
            quanLy.showListInforPhuongTien()
        end
        if dem.to_i == 7
            puts ("id cần xóa là:")
            idcanxoa=gets.chomp.to_s

            quanLy.deleteById()
        end
    end
end


# c1 = Phuongtien.new("1", "Honda","2020", "Xe may", "50000000", "82N00959", "Den")
# c2 = Phuongtien.new(2, "Honda",2020, "Xe may", 50000000, "82N00959", "Den")
# c3 = Phuongtien.new(3, "Honda",2020, "Xe may", 50000000, "82N00959", "Den")
# c4 = Phuongtien.new(4, "Honda",2020, "Xe may", 50000000, "82N00959", "Den")
# c5 = Phuongtien.new(5, "Honda",2020, "Xe may", 50000000, "82N00959", "Den")

# list = QLPTGT.new()
# list.addPhuongTien(c1)
# list.addPhuongTien(c2)
# list.addPhuongTien(c3)
# list.addPhuongTien(c4)
# list.addPhuongTien(c5)

#list.searchCadresByName("Duong Thi Mien")

