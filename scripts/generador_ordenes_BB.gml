randomize()
var comida=irandom(10)

if comida<8
    comida[0]=22
else
    comida[0]=23
        
if comida!=0
{
    switch comida[0]
    {
        case 22:
            comida[1]=irandom_range(12,14)
            comida[2]=irandom_range(12,20)
            comida[3]=irandom_range(16,20)
            comida[4]=irandom_range(16,20)
            comida[5]=irandom_range(16,20)
            comida[6]=irandom_range(26,31)
            comida[7]=irandom_range(26,31)
            comida[8]=irandom_range(26,31)
            comida[9]=irandom_range(12,20)
            comida[10]=irandom_range(12,20)
            comida[11]=21
        break
        case 23:
            comida[1]=15
            comida[2]=irandom_range(16, 20)
            comida[3]=irandom_range(16, 20)
            comida[4]=irandom_range(16, 20)
            comida[5]=irandom_range(26, 31)
            comida[6]=irandom_range(26, 31)
            comida[7]=irandom_range(26, 31)
            comida[8]=irandom_range(26, 31)
            comida[9]=0
            comida[10]=0
            comida[11]=0
        break
    }
}

salida[0]=comida

var bebida=irandom(2)

var guarnicion=irandom(2)

var helado=irandom(2)

while bebida+guarnicion+helado>3
{
    bebida=irandom(2)

    guarnicion=irandom(2)

    helado=irandom(2)
}


var aux=bebida

for (var pene=0; pene<aux; pene++)
{
    bebida[pene]=irandom_range(5, 8)
}

salida[1]=bebida

aux=guarnicion

for (var pene=0; pene<aux; pene++)
{
    guarnicion[pene]=irandom_range(33, 35)
}

salida[2]=guarnicion

aux=helado

for (var pene=0; pene<aux; pene++)
{
    helado[pene]=irandom_range(1, 4)
}

salida[3]=helado

if salida[0]!=0 || salida[1]!=0 || salida[2]!=0 || salida[3]!=0
    return salida
else
    return generador_ordenes_BB()
