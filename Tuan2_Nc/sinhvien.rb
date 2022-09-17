class SinhVien
    def initialaze(name,toan,ly,hoa,tb)
        @@name = name
        @@toan = toan
        @@ly = ly
        @@hoa = hoa
        @tb = tb
    end

    def nhapThongTin
        puts ("Nhập Họ và Tên: ")
        @@name = gets
        puts ("Nhập điểm Toán: ")
        @@toan = gets.to_f
        puts ("Nhập điểm Lý: ")
        @@ly = gets.to_f
        puts ("Nhập điểm Hóa: ")
        @@hoa = gets.to_f
    end

    def trungBinh
        @@tb = (@@toan + @@ly + @@hoa) / 3.to_f
    end
    def hienthi
        puts ("Tên sinh viên là:  #{@@name}" )
        puts ("Điểm Toán là:  #{@@toan}" )
        puts ("Điểm Lý là:  #{@@ly}" )
        puts ("Điểm Hóa là:  #{@@hoa}" )
        puts ("Điểm Trung Bình là: " ), trungBinh
    end

    sinhVien = SinhVien.new
    sinhVien.nhapThongTin
    sinhVien.hienthi
end