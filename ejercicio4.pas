program ejercicio4;
    const   
        cantedades = 25;
    type
        tEdades = array[1..cantedades]of integer;
    var 
        edades: tEdades;
        promedio, contador, suma, i:integer;
    begin
        suma:=0;
        promedio:=0;
        randomize;
        for i:= 1 to cantedades do 
            begin
            edades[i]:= random(80);
            {write(edades[i]);
            writeln('');}
            end;
        for i:= 1 to cantedades do {calcula el total de edades}
            suma:=(suma+Edades[i]);
        promedio:=(suma div cantedades);
        writeln('El promedio de edades es: ', promedio); {calcula promedio de edades (enteros)}
        contador:=0;
        for i:= 1 to cantedades do
            if (edades[i]>promedio) then
                begin
                    contador:= contador+1;
                end;
        write('La cantidad de personas mayor al promedio de edad: ', contador);
    end.