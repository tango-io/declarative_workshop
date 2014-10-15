def pascalsTriangle(n)
   (0..n-1).collect do |i|
      build_pascal_row(i)
   end.flatten
end

def combination(n,k)
  fact(n) / ( fact(k) * fact(n-k) )
end

def fact(n)
	(1..n).inject(:*) || 1
end

def build_pascal_row(n)
	(0..n).collect do |i|
  	combination(n,i)
  end
end
