class Thuvien
    attr_accessor :matl,:tennxb,:sobanph
    def initialize matl,tennxb,sobanph
        @matl=matl
        @tennxb=tennxb
        @sobanph=sobanph
    end
    def display
        puts " ma tai lieu : #{@matl}"
        puts " ten nha xuat ban: #{@tennxb}"
        puts " so ban phat hanh: #{@sobanph}"
    end
end
class Sach < Thuvien
    attr_accessor :tentg,:sotrang
    def initialize matl,tennxb,sobanph,tentg,sotrang
        super(matl,tennxb,sobanph)
        @tentg=tentg
        @sotrang=sotrang
    end
    def display
        super()
        puts " tên tác gia: #{@tentg}"
        puts "so trang : #{@sotrang}"

    end
end
class Tapchi < Thuvien
    attr_accessor :soph,:thangph
    def initialize matl,tennxb,sobanph,soph,thangph
        super(matl,tennxb,sobanph)
    end
    def display
        super()
        puts "so phat hanh : #{@soph}"
        puts "thang phat hanh : #{@thangph}"

    end
end
class Bao < Thuvien
    attr_accessor :ngayph
    def initialize matl,tennxb,sobanph,ngayph
        super(matl,tennxb,sobanph)
        @ngayph=ngayph
    end
    def display
        super()
        puts " ngày phát hành: #{@ngayph}"
    end
end
class Quanlysach
    @@qlsach=Array.new
    def addsach(qlsach)
        @@qlsach.push(qlsach)
    end
    def xoatheoId (id)
        @@qlsach.delete_if {|x| x.id213 == id}
    end
    def showTT()
        @@qlsach.each {|qlsach| qlsach.display}
        puts ("<---------******---------->")
    end
    def timkiemtheohang(key)
        searchList = @@vehicles .select {|o| o.sotrang213 == key}
        searchList.each{ |sl| sl.show}
    end
    def timkiemTacGia(key)
        searchList = @@qlsach .select {|o| o.tentg213 == key}
        searchList.each{|sl| sl.show}
    end
    def timkiemSoPhatHanh(key)
        searchList = @@qlsach .select {|o| o.soph213 == key}
        searchList.each{|sl| sl.show}
    end
end
quanLySach = Quanlysach.new()
sach = Sach.new(1, "Kim Đồng","100","Nguyễn Đăng Khoa",200)
tapChi = Tapchi.new(1,"Kim Đồng", "50","1242H34AB","2/2020")
bao = Bao.new(2,"P.V", "20","02/01/2022")

quanLySach.addsach(sach)
puts ("<---------******---------->")
quanLySach.addsach(tapChi)
puts ("<---------******---------->")
quanLySach.addsach(bao)
puts ("<---------******---------->")
quanLySach.showTT()
puts ("<---------******---------->")
quanLySach.timkiemtheohang("20")
puts ("<---------******---------->")
quanLySach.timkiemTacGia("Nguyễn Đăng Khoa")
puts ("<---------******---------->")
quanLySach.timkiemSoPhatHanh("1242H34AB")
puts ("<---------******---------->")
quanLySach.xoatheoId(2)
quanLySach.showTT()