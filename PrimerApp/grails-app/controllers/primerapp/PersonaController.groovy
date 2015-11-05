package primerapp

class PersonaController
{
    def PersonaService
    def index()
    {
        //List<Persona> personas=PersonaService.listarPersonas
        //(params)
        //render(view: '/persona/index', model: [personas:personas])

    }

    def create(){
        render(view: '/persona/_crear')
    }
    def guardar ()
        {
            personaService.guardar(params)
            List<Persona> lista = personaService.listaPersonas(params)
            render(template: '/persona/tabla', model: [personas:lista])
     }
    def detalle(){

        def nombre =params.nombre
        def apellidoPaterno=params.apellidoPaterno
        def apellidoMaterno=params.apellidoMaterno
        def fechaDeNacimiento=params.fechaDeNacimiento
        render(view:'/persona/detalle', model:[personas:nombre]);
    }
    def buscar ()
    {
        def valor = params.comboBuscar
        switch (valor){
            case 'nombre':
                String nombre = params.buscar
                List<Persona> personas= Persona.findAllByNombre(nombre)
                render(view:'/persona/index', model: [personas: personas])
                break

            case 'apellidoPaterno':
                String apellidoPaterno = params.buscar
                List<Persona> personas = Persona.findAllByApellidoPaterno(apellidoPaterno)
                render(view:'/persona/index', model: [personas: personas])
                break

            case 'apellidoMaterno':
                String apellidoMaterno = params.buscar
                List<Persona> personas = Persona.findAllByApellidoMaterno(apellidoMaterno)
                 render(view:'/persona/index', model: [personas:personas])
                break

            case 'fechaDeNacimiento':
                String fechaDeNacimiento = params.buscar
                List<Persona> personas = Persona.findAllByFechaDeNacimiento(fechaDeNacimiento)
                render(view:'/persona/index', model: [personas:personas])
                break

            default:
                println("¡¡Seleccione parametro para Busqueda!!")

                List<Persona> lista = personaService.listarPersonas(params)
                render(view:'/persona/buscar', model:[personas:params]);
        }

    }
    def actulizar(){

        params.max = Math.min(params.max ? params.int('max'): 1, 100)
        if(!params.offset)
            params.offset = 0

        def mapa = personaService.listarPersonas(params)
        if(params.offset)
            render (view: "index",model:[personas: Persona.list(params)])
        else
            render (view: "index",model:[personas: Persona.list(params)])
    }
}
