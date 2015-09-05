# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
unless Region.all.exists?
	regions = [['ARICA Y PARINACOTA', 'Arica', 'Parinacota'], ['TARAPACÁ', 'Iquique', 'Tamarugal'], ['ANTOFAGASTA', 'Antofagasta', 'El Loa', 'Tocopilla'], ['ATACAMA', 'Copiapó', 'Chañaral', 'Huasco'], ['COQUIMBO', 'Elqui', 'Choapa', 'Limarí'], ['VALPARAÍSO', 'Valparaíso', 'Isla de Pascua', 'Los Andes', 'Petorca', 'Quillota', 'San Antonio', 'San Felipe de Aconcagua', 'Marga Marga'], ["DEL LIBERTADOR GRAL. BERNARDO O'HIGGINS", 'Cachapoal', 'Cardenal Caro', 'Colchagua'], ['DEL MAULE', 'Talca', 'Cauquenes', 'Curicó', 'Linares'], ['DEL BIOBÍO', 'Concepción', 'Arauco', 'Biobío', 'Ñuble'], ['DE LA ARAUCANÍA', 'Cautín', 'Malleco'], ['DE LOS RÍOS', 'Valdivia', 'Ranco'], ['DE LOS LAGOS', 'Llanquihue', 'Chiloé', 'Osorno', 'Palena'], ['AISÉN DEL GRAL. CARLOS IBAÑEZ DEL CAMPO', 'Coihaique', 'Aisén', 'Capitán Prat', 'General Carrera'], ['MAGALLANES Y DE LA ANTÁRTICA CHILENA', 'Magallanes', 'Antártica Chilena', 'Tierra del Fuego', 'Ultima Esperanza'], ['REGIÓN METROPOLITANA DE SANTIAGO', 'Santiago', 'Cordillera', 'Chacabuco', 'Maipo', 'Melipilla', 'Talagante']]
	regions.each do |region|
		region_name = region[0].to_s
		provinces = region.drop(1).each
		my_region = Region.create(name: region_name)
		provinces.each do |province|
			my_region.provinces.create(name: province)
		end		
	end
end
