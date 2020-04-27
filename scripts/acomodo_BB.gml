if argument[0]==0
{
    ob_jugador_BB.alarm[9]=2
}

if inventario[0]==0 && (ob_colision_jugador_BB.inventario[pos-1]==22 || 
ob_colision_jugador_BB.inventario[pos-1]==23)
{
    inventario[argument[0]]=ob_colision_jugador_BB.inventario[pos-1]
    ob_colision_jugador_BB.inventario[pos-1]=0
    exit    
}

if inventario[argument[0]]==0
{
    inventario[argument[0]]=ob_colision_jugador_BB.inventario[pos-1]
    ob_colision_jugador_BB.inventario[pos-1]=0
}
else
    if argument[0]<11
        acomodo_BB(argument[0]+1)
