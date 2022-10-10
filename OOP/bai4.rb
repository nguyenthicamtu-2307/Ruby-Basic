class Nguoi
    attr_accessor :name, :age, :work, :cmnd
    def initialize (name,age,work,cmnd)
        @name = name
        @age = age
        @work = work
        @cmnd = cmnd
    end 
    def enter_infomation
        print "Nhập tên : "
        @name = gets.chomp
        print "Nhập tuổi : "
        @age = gets.to_i
        print "Nhập nghê nghiêp: "
        @work = gets.chomp
        print "Nhập số chưng minh nhân dân : "
        @cmnd = gets.to_i
    end
    def info    
        puts "Tên : #{@name}"
        puts "Tuối : #{@age}"
        puts "Nghê nghiệp : #{@work}"
        puts "Chứng minh nhân dân #{@cmnd}"
    end
    
end 

class HoGiaDinh 
    attr_accessor :home, :member, :members213
    def initialize (name,age,work,cmnd,home,member,member213)
        super(name,age,work,cmnd)
        @home = home
        @member = member
        @member213 = member213
    end 
    def enter_infomation
        @members = []
        print "Nhập số nhà: "
        @home = gets.chomp
        print "Nhập số thành viên : "
        @member = gets.to_i
        for i in (0..@member - 1) do
            puts "====Nhập thành viên thứ #{i+1}===="
            member213 = Nguoi.new
            member213.enter_infomation
            @members213 << member213
        end
    end
   
    def info
        puts "Số nhà : #{@home}"
        puts "Số thành viên : #{@member}"
        i =1
        @members.each do |member|
            puts "===thông tin thành viên thứ #{i}==="
            member213.info
            i = i+1
        end
    end
end
class KhuPho 
    def initialize
    end
    $hogiadinhs = []
    def addHoGiaDinh
        print "Nhập số hộ gia đình : "
        @soluong = gets.to_i
        for i in (0..@soluong - 1) do
            puts "=====nhập hộ gia đình thứ #{i+1}======"
            hogiadinh = HoGiaDinh.new
            hogiadinh.enter_infomation
            $hogiadinhs << hogiadinh
        end
    end

    def infomatinon 
        i =1
        puts "============Thong tin Khu phố ================"   
        $hogiadinhs.each do |hogiadinh|
            puts "=====Thông tin hộ gia đình thứ #{i}======"
            hogiadinh.info
            i = i+1
        end
    end

end


khupho_236 = KhuPho.new
khupho_236.addHoGiaDinh
khupho_236.infomatinon