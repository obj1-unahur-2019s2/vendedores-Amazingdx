class Vendedor
{
	var property certificaciones = #{}
	
	method puedeTrabajarEn(ciudad) 
	method esVersatil() 
		{
			return certificaciones.size(3) and certificaciones.any { certif =>     certif.esSobreProducto() }
			                               and certificaciones.any { certif => not certif.esSobreProducto() }
		}
	method esFirme()
	method esInfluyente()
}

class VendedorFijo inherits Vendedor
{
	var property ciudad = "ciudad"
}

class VendedorViajante inherits Vendedor
{
	var property provinciasHabilitadas = #{}
}

class ComercioCorresponsal inherits Vendedor
{
	var property ciudadesConSucursales = []
}

//--------------------

class Certificaciones inherits Vendedor
{
	var property puntos = 0
	var property esSobreProducto = false
}
