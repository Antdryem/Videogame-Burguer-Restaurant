
//show_message(ob_colision_jugador_BB.orden[0])
//show_message(caracteristicas[0])

var calificacion=0
var piden=ob_colision_jugador_BB.orden[0]
var doy=caracteristicas[0]
//dar puntos de lo que hizo correcto
for (var pene=0; pene<array_length_1d(piden); pene++)
{
    for (var segundo=0; segundo<array_length_1d(doy); segundo++)
    {
        if piden[pene]==doy[segundo]
        {
            calificacion++
            doy[segundo]=99
            piden[pene]=99
            segundo=99
        }
    }
}
//lo que sobre o falte de la orden, quita puntos
for (var pene=0; pene<12; pene++)
{
    if piden[pene]!=99
        calificacion--
    if doy!=0 && doy[pene]!=99
        calificacion--
}
//analizar la bebida, guarnicion y helado, dar puntos
for (var pene=1; pene<4; pene++)
{
    if ob_colision_jugador_BB.orden[pene]!=0
    {
        var piden=ob_colision_jugador_BB.orden[pene]
        for (var segundo=1; segundo<array_length_1d(piden); segundo++)
        {
            for (var tercero=1; tercero<array_length_1d(inventario); tercero++)
            {            
                if piden[segundo]==inventario[tercero]
                {
                    calificacion+=3
                    inventario[tercero]=99
                    piden[segundo]=99
                    tercero=99
                }
            }
            if piden[segundo]!=99
                calificacion-=3
        }
    }
}

if calificacion>5
{
    if ob_colision_jugador_BB.tiempo<=900
        calificacion+=20
    else
        if ob_colision_jugador_BB.tiempo<=1800
            calificacion+=10
        else
            if ob_colision_jugador_BB.tiempo<=2700
                calificacion+=0
            else
                if ob_colision_jugador_BB.tiempo<=3600
                    calificacion-=10
                else
                    calificacion-=20
}

ob_colision_jugador_BB.tiempo=0

ob_colision_jugador_BB.puntos+=calificacion

for (var pene=0; pene<4; pene++)
    inventario[pene]=0
    caracteristicas[0]=0
with ob_colision_jugador_BB
{
    for (var pene=0; pene<4; pene++)
        orden[pene]=0
}

with ob_NPC_BB
{
    instance_destroy()
}
