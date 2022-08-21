program Ejercicio2;
    const
        max = 4;
    type
        tVector = array[1..max] of integer;
    var
        A,B,C: tVector;
        i, contador: integer;
    begin
        randomize;
        for i:= 1 to max do
            begin
            a[i]:= random(10);
            b[i]:= random(10);
            end;
        {write(a[1]);
        writeln('');
        write(b[1]);
        writeln('');
        c[1]:=(a[1]+b[1]);    
        write(c[1]);
        writeln('');}
        for i:= 1 to max+1 do
            begin
            c[i+1]:=(a[i+1]+b[i+1]);
            end;
        write(a[i+1]);
        writeln('');
        write(b[i+1]);
        writeln('');    
        write(c[i+1]);   
    end.

