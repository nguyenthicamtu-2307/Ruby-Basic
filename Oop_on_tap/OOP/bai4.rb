class Nguoi
    attr_accessor :name_253, :age_253, :work_253, :cmnd_253
    def initialize name_253, age_253, work_253, cmnd_253
        @name_253 = name_253
        @age_253 = age_253
        @work_253 = work_253
        @cmnd_253 = cmnd_253
    end 
    def initialize
    end
    def enter_infomation
        print "Nhập tên : "
        @name_253 = gets.chomp
        print "Nhập tuổi : "
        @age_253 = gets.to_i
        print "Nhập nghê nghiêp: "
        @work_253 = gets.chomp
        print "Nhập số chưng minh nhân dân : "
        @cmnd_253 = gets.to_i
    end
    def info    
        puts "Tên : #{@name_253}"
        puts "Tuối : #{@age_253}"
        puts "Nghê nghiệp : #{@work_253}"
        puts "Chứng minh nhân dân #{@cmnd_253}"
    end
end 

class HoGiaDinh < Nguoi
    attr_accessor :home_253, :member_253, :members_253
    def initialize name_253, age_253, work_253, cmnd_253, home_253, member_253, members_253
        super name_253, age_253, work_253, cmnd_253
        @home_253 = home_253
        @member_253 = member_253
        @members_253 = members_253
    end 
    def initialize
    end
    def enter_infomation
        @members_253 = []
        print "Nhập số nhà: "
        @home_253 = gets.chomp
        print "Nhập số thành viên : "
        @member_253 = gets.to_i
        for i in (0..@member_253 - 1) do
            puts "====Nhập thành viên thứ #{i+1}===="
            member1_253 = Nguoi.new
            member1_253.enter_infomation
            @members_253 << member1_253
        end
    end
   
    def info
        puts "Số nhà : #{@home_253}"
        puts "Số thành viên : #{@member_253}"
        i =1
        @members_253.each do |member_253|
            puts "===thông tin thành viên thứ #{i}==="
            member_253.info
            i = i+1
        end
    end
end
class KhuPho 
    def initialize
    end
    $hogiadinhs_253 = []
    def addHoGiaDinh
        print "Nhập số hộ gia đình : "
        @soluong_253 = gets.to_i
        for i in (0..@soluong_253 - 1) do
            puts "=====Nhập hộ gia đình thứ #{i+1}======"
            hogiadinh_253 = HoGiaDinh.new
            hogiadinh_253.enter_infomation
            $hogiadinhs_253 << hogiadinh_253
        end
    end

    def infomatinon 
        i = 1
        puts "============Thong tin Khu phố ================"   
        $hogiadinhs_253.each do |hogiadinh_253|
            puts "=====Thông tin hộ gia đình thứ #{i}======"
            hogiadinh_253.info
            i = i+1
        end
    end

end

khupho_253 = KhuPho.new
khupho_253.addHoGiaDinh
khupho_253.infomatinon