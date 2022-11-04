class PhanSo
    attr_accessor :tu253, :mau253
    def initialize (tu253,mau253)
        @tu253 = tu253
        @mau253 = mau253
    end
    def UCLN(ts253,ms253)
        ts253 = ts253.to_i.abs
        ms253 = ms253.to_i.abs
        while ts253 != ms253 
            if ts253 > ms253 
                ts253 -= ms253
            else
                ms253 -= ts253
            end
        end
        ts253
    end
    def rutGon()
        i = UCLN(@tu253,@mau253)
        @tu253 = @tu253 / i
        @mau253 = @mau253 / i
    end
    def + (other)
        ts253 = @tu253 * other.mau253 + other.tu253 * @mau253
        ms253 = @mau253 * other.mau253
        show(ts253,ms253)
    end
    def - (other)
        ts253 = @tu253 * other.mau253 - other.tu253 * @mau253
        ms253 = @mau253 * other.mau253
        show(ts253,ms253)
    end
    def * (other)
        ts253 = @tu253 * other.tu253
        ms253 = @mau253 * other.mau253
        show(ts253,ms253)
    end
    def / (other)
        ts253 = @tu253 * other.mau253
        ms253 = @mau253 * other.tu253
        show(ts253,ms253)
    end
    def show (ts253,ms253)
        ps = PhanSo.new(ts253,ms253)
        ps.rutGon
        ps.to_s
    end
    def to_s ()
        puts("#{@tu253}/#{@mau253}")
    end
end
p1 = PhanSo.new(5,2)
p2 = PhanSo.new(7,4)
p1 + p2
p1 - p2
p1 * p2
p1 / p2