class Array
    def myeach
	i = 0
        while i < self.size
	    yield self[i]
	    i += 1
	end
    end
end


array = [10, 20, 30]

array.myeach do |tmp|
    p tmp
end
