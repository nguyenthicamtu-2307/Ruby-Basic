class Officer
    attr_accessor :name, :age, :gender, :address
    def initialize name, age,gender,address
        @name = name
        @age = age
        @gender = gender
        @address = @address
    end
    def display
        puts ("Ten: #{@name}")
        puts ("Tuoi: #{@age}")
        puts ("Gioi Tinh: #{@gender}")
        puts ("Dia Chi:  #{@address}")
    end
end
class Staff < Officer
    attr_accessor :task
    def initialize name, age,gender,address, task
        super(name,age,gender,address)
        @task = task
    end
    def display
        super()
        puts ("Cong vien duoc giao: #{@task}")
    end
end
class Engineer < Officer
    attr_accessor :branch
    def initialize name, age,gender,address,branch
        super(name, age,gender,address)
        @branch = branch
    end
    def display
        super()
        puts ("Nganh dao tao: #{@branch}")
    end
end
class Worker < Officer
    attr_accessor :level
    def initialize name,age,gender,address,level
        super(name,age,gender,address)
        @level = level
    end
    def display
        super()
        puts ("Bac Luong: #{@level}")
    end
end

class ManagerOfficer
    attr_accessor :ds
    def initialize 
        @ds = Array.new
    end
    def Add name,age,gender,address
        of = Officer.new(name,age,gender,address)
        @ds.push(of)
    end

end
class Main
    dem=0
    mo=ManagerOfficer.new()
    until dem==1 do
       puts "3. them"
       puts "2. tim kiem"
       puts "1. thoat"
       dem=gets
       if dem.to_i ==1
            exit
        end
        if dem.to_i == 3
            print " Nhap ten :"
            name=gets
            print "nhap tuoi: "
            age=gets
            print "gioi tinh: "
            gender =gets
            print "dia chi"
            address=gets
            mo.Add(name,age,gender,address)
    end
end
end

