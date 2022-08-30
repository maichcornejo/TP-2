program ejercicio11;
    const 
        max= 4;
    var 
        tiempo: array[1..max] of real; {crear un vector nuevo para guardar los elementos de base}
        i,j, ultimo: integer;
        primero, ulti, base:real;
    begin
        randomize;
        write('autos    tiempo');
        writeln('');
        for i:= 1 to max do  {carga el vector}   
            begin
                tiempo[i]:= random(600)/10;
                writeln(i, '   ', tiempo[i]:2:2);
            end;
            writeln('');
        primero:=tiempo[1];
        for i:= 1 to max do {calcula el mejor tiempo y el ultimo auto}
            begin
                if tiempo[i]<primero then
                    primero:=tiempo[i];
                if tiempo[i]>primero then 
                    ultimo:=i;
            end;
        base:=00.00;
        for i := 1 to max do {ordena los tiempos de clasificacion}
            begin
                for j := i to max do 
                    begin
                        if (tiempo[j] < tiempo[i]) then 
                        begin
                            base := tiempo[i];
                            tiempo[i] := tiempo[j];
                            tiempo[j] := base;
                        end;
                    end;
            end;
        for i := 1 to max do
                Writeln(tiempo[i]:2:2);
        writeln('mejor tiempo de clasificacion: ', primero:2:2);
        writeln('ultimo en llegar: ', ultimo);
    end. 

    {begin
            base:=tiempo[1];
            for j:= 1 to max do 
                begin
                        if tiempo[j]< base then 
                            begin
                            base:= tiempo[j];
                            k:=j;
                        end;}