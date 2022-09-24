class Human
    attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation
    def initialize name, hair, weight, height, age, phone, email, nation
        @name = name
        @hair = hair
        @weight = weight
        @height = height
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end

    def display 
        puts "Ten: #{@name}"
        puts "Mau Toc: #{@hair}"
        puts "Can nang: #{@weight}"
        puts "Chieu cao: #{@height}"
        puts "Tuoi: #{@age}"
        puts "SDT: #{@phone}"
        puts "Email: #{@email}"
        puts "Dan toc: #{@nation}"
    end
end
class Student < Human 
    attr_accessor :grade1, :grade2, :grade3
    def initialize name, hair, weight, height, age, phone, email, nation,grade1,grade2,grade3
        super(name,hair,weight,height,age,phone,email,nation)
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
    end
    def Diemtb
             puts 'Điểm trung bình là %.2f' % [(@grade1.to_f+@grade2.to_f+@grade3.to_f)/3]
            end
    def display
        super()
        puts ("Grade1: #{@grade1}")
        puts ("Grade2: #{@grade2}")
        puts ("Grade3: #{@grade3}")
    end
end


Sv=Student.new("Cẩm tú","REd",45,160,21,323324,"abc@gmai.com","vn",10,9,9)
Sv1=Student.new("ABC","REd",45,160,21,323324,"abc@gmai.com","vn",9,9,9)
puts("sinh viên lúc chưa sắp xếp \n")
Sv.display
Sv.Diemtb
Sv1.display
Sv1.Diemtb

Stds=[Sv,Sv1]
Stds=Stds.sort_by{|a| [a.Diemtb]}
puts "mảng đã sắp xếp \n :#{Stds}"

