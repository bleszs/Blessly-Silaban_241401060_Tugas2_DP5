program bilanganGenap;
uses crt;

var
    a,n,sum:integer;
begin
clrscr;
    write('Masukkan batas bilangan anda: '); readln(n);
    sum := 0;

for a := 1 to (n) do 
    if (a mod 2 = 0) then
        begin
            writeln(a, ' Adalah bilangan genap ');
            sum:=sum+a;             
        end;  

writeln('Total bilangan genap ', sum);
end.
