program Faktorial;
uses crt;
var 
  i, n: integer;
  hasil: longint;
  ulangi : char;
  
begin
  repeat
    clrscr;
    hasil := 1;
    
    writeln('Program Menghitung Faktorial');
    writeln('----------------------------');
    write('Masukkan bilangan positif untuk dihitung faktorialnya: '); readln(n);
      
    if n >= 0 then
    begin
      for i := 1 to n do
      begin
        hasil := hasil * i;
        if hasil < 0 then 
        begin
          writeln('Peringatan: Hasil terlalu besar untuk ditampilkan.');
          break;
        end;
      end;
      
      if hasil > 0 then  
      begin
        writeln('Hasil faktorial dari ', n, ' adalah ');
        writeln(n, '! = ', hasil);

        write(n, '! = ');
        for i := n downto 1 do
        begin
          write(i);
          if i > 1 then
            write(' x ')
          else
            writeln(' = ', hasil);
        end;
      end;
    end
    else
      writeln('Masukan tidak valid. Harap masukkan bilangan positif atau nol.');

    writeln;
    write('Apakah Anda ingin menghitung faktorial lagi? (Y/N): ');
    readln(ulangi);
  until UpCase(ulangi) = 'N';

  writeln('Terima kasih telah menggunakan program Faktorial!');
end.