package primerapp

import grails.transaction.Transactional

@Transactional
class PersonaService {

    def utilService

    Persona guarPersona()
    {
        Persona persona = new Persona(params)
        /** Segunda opcion:
         * Persona persona = new Persona(nombre: params.nombre, apellidoPaterno: params.apellidoPaterno, apellidoMaterno: params.apellidoMaterno)*/
        persona.save(flush: true, failOnError: true)
        persona //lo ultimo que lee grails con groovy es el return que va a tener
     }
    Persona consultarPersona(Long id)
    {
        Persona persona = persona.get(id)
        persona
    }
    List<Persona> listarPersonas(params)
    {
        params.nombre = "Jorge Luis"
        params.apellidoPaterno = "Jimenez"
        params.fechaDeNacimiento = new Date()
        List<Persona> listarPersonas = Persona.list()
        listarPersonas
    }
    Persona guardar(params)
    {
        Persona persona = new Persona(params)
        persona.save(flush: true, failOnError: true)
        persona
    }

}