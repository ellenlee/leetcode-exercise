# Power of two
# 給定一個整數，請寫出一組 Ruby 程式，判斷這個整數是不是二的次方

def is_power_of_two(n)


	# 先處理例外（0, 1, 負數）
	if n == 1
		return true
	elsif	n <= 0 || n % 2 != 0
		return false

	# 處理 n >= 2 的情況
	else
	# 如果 n 除以 2 的餘數是 0, 就把 n 一直除以 2
		while ( n % 2 == 0 )
			n /= 2
		end
		# 如果除到最後，被完全整除，就是 2 的次方
		if n == 1
			return true
		# 如果沒被完全整除，就不是 2 的次方
		else
			return false
		end
	end
end

puts "When n = 0, #{is_power_of_two(0)}" # should return false.
puts "When n = 1, #{is_power_of_two(1)}" # should return true.
puts "When n = -3, #{is_power_of_two(-3)}" # should return false.
puts "When n = 16, #{is_power_of_two(16)}" # should return true.
