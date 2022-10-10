class CanBo
    attr_accessor :name, :age, :gender, :address

    def initialize name, age, gender, address
        @name = name
        @age = age
        @gender = gender
        @address = address
    end

    def display
        puts "Name: #{@name}"
        puts "Age: #{@age}"
        puts "Gender: #{@gender}"
        puts "Address: #{@address}"
    end

    def getName
        return self.name
    end
end

    class CongNhan < CanBo
        attr_accessor :grade

        def initialize name, age, gender, address, grade
            super(name, age, gender, address)
            @grade = grade
        end

        def display
            super()
            puts "Grade: #{@grade}"
        end
    end

class KySu < CanBo
    attr_accessor :branch

    def initialize name, age, gender, address, branch
        super(name, age, gender, address)
        @branch = branch
    end

    def display
        super()
        puts "Branch: #{@branch}"
    end
end

class NhanVien < CanBo
    attr_accessor :job

    def initialize name, age, gender, address, job
        super(name, age, gender, address)
        @job = job
    end

    def display
        super()
        puts "Job: #{@job}"
    end
end

class QuanLyCanBo
    attr_accessor :danhSachCanBo

    def initialize
        @danhSachCanBo = Array.new    
    end

    def addNewCanBo name, age, gender, address
        canbo = CanBo.new(name, age, gender, address)
        @danhSachCanBo.push(canbo)
    end

    def searchByName name
        lenght = @danhSachCanBo.length
        for i in 0..lenght do
            # if @danhSachCanBo[i].getName == name
            #     @danhSachCanBo[i].display
            # end
            # @danhSachCanBo[i].name
            @danhSachCanBo[i].display
        end
    end
end

class Main
    counter = 0
    quanLyCanBo = QuanLyCanBo.new()

    until counter == -1 do
        puts "1. Them"
        puts "0. Tim kiem"
        puts "-1. Thoat"
        print "Nhap: "
        counter = gets
        if counter.to_i == -1
            exit
        end
        if counter.to_i == 0
            print "Nhap ten: "
            ten = gets
            quanLyCanBo.searchByName(ten)
        end
        if counter.to_i == 1
            print "Nhap ten: "
            ten = gets
            print "Nhap tuoi: "
            tuoi = gets
            print "Nhap gioi tinh: "
            gioiTinh = gets
            print "Nhap dia chi: "
            diaChi = gets
            quanLyCanBo.addNewCanBo(ten, tuoi, gioiTinh, diaChi)
        end
    end
end