class TaiLieu
    attr_accessor :id253, :nxb253, :number253
    def initialize (id253, nxb253,number253)
        @id253 = id253
        @nxb253 = nxb253
        @number253 = number253
    end
    def show 
        puts ("Id sách: #{@id253}")
        puts ("Nhà xuất bản: #{@nxb253}")
        puts ("Số bản phát hành: #{@number253}")
    end
end
class Sach < TaiLieu
    attr_accessor :tentg253, :sotrang253
    def initialize (id253, nxb253,number253,tentg253,sotrang253)
        super(id253, nxb253,number253)
        @tentg253 = tentg253
        @sotrang253 = sotrang253    
    end
    def show
        super
        puts ("Tên tác giả: #{@tentg253}")
        puts ("Số trang: #{sotrang253}")
    end
end
class Bao < TaiLieu
    attr_accessor :ngayph253
    def initialize (id253,nxb253,number253,ngayph253)
        super(id253,nxb253,number253)
        @ngayph253 = ngayph253
    end
    def show
        super
        puts ("Ngày phát hành: #{@ngayph253}")
    end
end
class TapChi < TaiLieu
    attr_accessor :soph253, :thangph253
    def initialize (id253,nxb253,number253,soph253,thangph253)
        super(id253,nxb253,number253)
        @soph253 = soph253
        @thangph253 = thangph253
    end
    def show
        super
        puts ("Số phát hành: #{@soph253}")
        puts ("Tháng phát hành: #{@thangph253}")
    end
end
class QuanLySach
    @@tailieu = Array.new
    def themTaiLieu(tailieu)
        @@tailieu.push(tailieu)
    end
    def xoatheoId (id)
        @@tailieu.delete_if {|x| x.id253 == id}
    end
    def showTT()
        @@tailieu.each {|tailieu| tailieu.show}
        puts ("<---------******---------->")
    end
    def timkiemtheohang(key)
        searchList = @@tailieu .select {|o| o.sotrang253 == key}
        searchList.each{ |sl| sl.show}
    end
    def timkiemTacGia(key)
        searchList = @@tailieu .select {|o| o.tentg253 == key}
        searchList.each{|sl| sl.show}
    end
    def timkiemSoPhatHanh(key)
        searchList = @@tailieu .select {|o| o.soph253 == key}
        searchList.each{|sl| sl.show}
    end
end

quanLySach = QuanLySach.new()
sach = Sach.new(1, "Kim Đồng","100","Nguyễn Đăng Khoa",200)
tapChi = TapChi.new(1,"Kim Đồng", "50","1242H34AB","2/2020")
bao = Bao.new(2,"P.V", "20","02/01/2022")

quanLySach.themTaiLieu(sach)
puts ("<---------******---------->")
quanLySach.themTaiLieu(tapChi)
puts ("<---------******---------->")
quanLySach.themTaiLieu(bao)
puts ("<---------******---------->")
quanLySach.showTT()
puts ("<---------******---------->")
quanLySach.timkiemtheohang("200")
puts ("<---------******---------->")
# quanLySach.timkiemTacGia("Nguyễn Đăng Khoa")
puts ("<---------******---------->")
quanLySach.timkiemSoPhatHanh("1242H34AB")
puts ("<---------******---------->")
quanLySach.xoatheoId(2)
quanLySach.showTT()