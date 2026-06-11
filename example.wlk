object cumbre {
    const paisesParticipantes = []
    const personasParticipantes = []
    method esConflictivo(unPais){
        return paisesParticipantes.any({p=>p.registrarConflicto(unPais)})
    }
    method ingresarCumbre(unaPersona){
        personasParticipantes.add(unaPersona)
    }
    method conjuntoDePaisesDeParticipantes(){
        return //aca completar
    }
    method cantidadParticipantesDeUnPais(unPais) {
      return personasParticipantes.filter({p=>p.consultarOrigen() == unPais}) //esta consulta se puede hacer?
    }
    method paisConMasParticipantes(){
        return //aca completar
    }
    method conjuntoParticipantesExtranjeros(){
        return //aca completar
    }
    method esRelevante(){
        return personasParticipantes.forEach({p=>p.esCape()})
    }
}
class Pais {
    method registrarConflicto(otroPais)
}
class Conocimiento {

}
