object cumbre {
    const paisesAuspiciantes = []
    const personasParticipantes = []
    method esConflictivo(unPais){
        return paisesAuspiciantes.any({p=>p.registrarConflicto(unPais)})
    }
    method ingresarACumbre(unaPersona){
        personasParticipantes.add(unaPersona)
    }
    method conjuntoDePaisesDeParticipantes(){
        return personasParticipantes.asList({p=>p.consultarOrigen()})
    }
    method cantidadParticipantesDe(unPais) {
      return personasParticipantes.filter({p=>p.consultarOrigen() == unPais}) //esta consulta se puede hacer?
    }
    method paisConMasParticipantes(){
        return self.conjuntoDePaisesDeParticipantes().max({p=>self.cantidadParticipantesDe(p)})
    }
    method conjuntoParticipantesExtranjeros(){
        return personasParticipantes.filter({p=> !paisesAuspiciantes.contains(p)})
    }

    method esRelevante(){
        return personasParticipantes.forEach({p=>p.esCape()})
    }
}
class Pais {
    method registrarConflicto(otroPais)
}

