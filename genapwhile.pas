program GenapWhile;
uses crt;
var
  n, i: integer;
begin
  clrscr;
  Write('Masukkan batas bilangan: ');
  Readln(n);
  i := 1;
  while i <= n do
  begin
    if i mod 2 = 0 then
      writeln(i, ' adalah bilangan genap ');
    i := i + 1;
  end;
  readln;
end.