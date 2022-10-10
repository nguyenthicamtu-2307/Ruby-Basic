class Phuongtien
    attr_accessor :ID253,:Hangsx253,:Namsx253,:Dongxe253,:Gia253,:Bienso253,:mau253
    def initialize ID,Hangsx,Namsx,Dongxe,Gia,Bienso,mau
        @ID=ID
        @Hangsx=Hangsx
        @Namsx=Namsx
        @Dongxe=Dongxe
        @Gia=Gia
        @Bienso=Bienso
        @mau=mau
    end
    def display
        puts "ID xe: #{@ID}"
        puts " Hang xe : #{@Hangsx}"
        puts "nam san xuat: #{@Namsx}"
        puts " dong xe : #{@Dongxe}"
        puts " gia ban : #"
    end
end