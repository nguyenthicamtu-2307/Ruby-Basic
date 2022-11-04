class Candidate
    attr_accessor :id, :name, :add, :priority
    def initialize (id,name,add,priority)
        @id = id
        @name = name
        @add = add
        @priority = priority
    end
    def show
        puts ("Số báo danh: #{@id}")
        puts ("Tên: #{@name}")
        puts ("Địa chỉ: #{@add}")
        puts ("Mức độ ưu tiên: #{@priority}")
    end
end
class CandidateA < Candidate
    attr_accessor :toan, :ly, :hoa
    def initialize(id,name,add,priority,toan,ly,hoa)
        super(id,name,add,priority)
        @toan = toan
        @ly = ly
        @hoa = hoa
    end
    def show
        super
        puts ("Điểm toán: #{@toan}")
        puts ("Điểm lý: #{@ly}")
        puts ("Điểm hóa: #{@hoa}")
    end
end
class CandidateB < Candidate
    attr_accessor :toan, :hoa, :sinh
    def initialize(id,name,add,priority,toan,hoa,sinh)
        super(id,name,add,priority)
        @toan = toan
        @hoa = hoa
        @sinh = sinh
    end
    def show
        super
        puts ("Điểm toán: #{@toan}")
        puts ("Điểm hóa: #{@hoa}")
        puts ("Điểm sinh: #{@sinh}")
    end
end
class CandidateC < Candidate
    attr_accessor :van, :su, :dia
    def initialize(id,name,add,priority,van,su,dia)
        super(id,name,add,priority)
        @van = van
        @su = su
        @dia = dia
    end
    def show
        super
        puts ("Điểm văn: #{@van}")
        puts ("Điểm sử: #{@su}")
        puts ("Điểm địa: #{@dia}")
    end
end
class ManagerCandidate
    @@candidate = Array.new
    def addCandidate(candidate)
        @@candidate.push(candidate)
    end
    def timkiemtheoSobaodanh(id)
        searchList = @@candidate .select { |o| o.id == id}
        searchList.each{ |sl| sl.show}
    end
    def showts()
        @@candidate.each{ |candidate| candidate.show}
    end
end


managerCandidate = ManagerCandidate.new()
tsA = CandidateA.new(1,"Nguyễn Văn A", "abc", "A", 7,8,9)
tsB = CandidateB.new(2,"Lên B", "xyz", "B", 4,6,7 )
tsC = CandidateC.new(3, "Trần C", "aaa", "C", 8,1,5)

managerCandidate.addCandidate(tsA)
managerCandidate.addCandidate(tsB)
managerCandidate.addCandidate(tsC)
managerCandidate.showts()
puts("<---------*******-------->")
managerCandidate.timkiemtheoSobaodanh(2)