program JumlahPositif;
uses crt;
var
  n, sumpositif, positif: integer;
begin
  clrscr;
  positif := 0;
  sumpositif := 0;
  repeat
    Write('Masukkan angka (Masukkan angka negatif jika ingin berhenti): ');
    Readln(n);
    if n >= 0 then
    begin
      positif := positif + 1;
      sumpositif := sumpositif + n;
    end;
  until n < 0;
  Writeln('Banyak angka positif yang dimasukkan: ', positif);
  Writeln('Total jumlah angka positif yang dimasukkan: ', sumpositif);
  readln;
end.