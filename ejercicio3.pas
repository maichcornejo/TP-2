program ejercicio3;
    const
        max=10;
    type
        tVector= array[1..max] of integer;
    var
        i,cPositivos,cNegativos: integer; {cPositivos y cNegativos = contadores}
        vector: tVector;
    begin
        randomize;
        cPositivos:=0;
        cNegativos:=0;
        for i:= 1 to max do
            begin
            vector[i]:= random(100)-50;
            write(vector[i]);
                if (vector[i]>0) then
                    begin
                        cNegativos:= cNegativos+1
                    end
                else
                    begin
                        cPositivos:=cPositivos+1
                    end;

            end;
        writeln('');
        writeln(cPositivos);
        writeln(cNegativos);
    end.

