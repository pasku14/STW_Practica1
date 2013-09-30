task :default => :buscar #Esto sirve por si solo mandas el comando rake en la terminal que pille por defecto la tarea "buscar".

desc "Popularidad"
task :buscar, :usuario, :n_follower do |t, args|
	usuario = args[:usuario] || 'Nhoxss'
	n_follower = args[:n_follower] || '2'
	sh "ruby twitt.rb #{usuario} #{n_follower}"
end
