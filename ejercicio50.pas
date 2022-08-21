program Ejercicio50;
    const 
        max = 4;
    type
        tVector = array[1..max] of integer;
    var 
        i, c: integer; { c= carry}
        n1,n2,n3: tVector;
    begin
        randomize;
        for i:= 1 to max do {carga n1 y}
            begin 
                n1[i]:= random(10);
                n2[i]:= random(10);
            end;
        for i:= 1 to max do {recorre n1}
            write(n1[i], '');
        writeln('');
        for i:= 1 to max do {recorre n2}
            write(n2[i], '');
        writeln('');
        c:=0;
        for i:= (max) downto 1 do  {suma n1 y n2}
            begin
                n3[i+1]:= (n1[i] + n2[i])+c;
                if n3[i]>9 then
                 begin
                     c:= n3[i] div 10;
                     n3[i]:= n3[i] mod 10;
                    end
            end;
        n3[1]:= c;
        for i:= 1 to (max+1) do {recorre n3}
            write(n3[i], '');
        writeln('');
    end.