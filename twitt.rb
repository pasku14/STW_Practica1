require 'twitter'
require './configure'

user = Hash.new(0)
screen_name = ARGV[0] || 'Nhoxss'
iteracion = ARGV[1] || '5'
max = 10
a_user = Twitter.user(screen_name)

puts "Usuario: #{a_user.screen_name}"
puts ""

# Iterate friends, hash their followers
friends = Twitter.friend_ids(screen_name)

var = 0

friends.ids.each do |fid|

    f = Twitter.user(fid)
    
    if (f.protected.to_s != "true")
		user[f.screen_name.to_s] = f.followers_count   
    end
    
    var += 1
    
    if ( var == max )
		break
	end
end

puts "Followers en orden:"
puts ""
var1 = iteracion.to_i

usuarios = user.sort_by {|k,v| -v}

usuarios.each do |name,count|
	if (var1 == 0)
		break
	end
	puts "#{name}        #{count}"
	var1 = (var1 - 1)
end
