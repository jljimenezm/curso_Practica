package primerapp

class Persona {

    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String fechaDeNacimiento



    static constraints = {
        nombre nullable: false
        apellidoPaterno nullable: false, blank: false
        apellidoMaterno nullable: true
        fechaDeNacimiento nullable: false
    }

}
