class Participante{
    const paisOrigen
    const conocimientos = []
    var commits = 0
    method consultarOrigen() = paisOrigen
}
class Programador inherits Participante{
    method esCape() = commits > 500
}
class Especialista inherits Participante{
    method esCape() = conocimientos.size() > 2
}

