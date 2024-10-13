program TebakAngka;
uses crt;
label
  1, 2;
var
  angkaRahasia, tebakan, batasAtas: Integer;
  kesempatan: Integer;
  mainLagi: char;

begin
1:
  clrscr;
  Randomize;
  batasAtas := 50;
  angkaRahasia := Random(batasAtas) + 1;
  kesempatan := 5;

  writeln('Selamat datang di game Tebak Tabek');
  writeln('----------------------------------');
  writeln('Saya telah memilih angka antara 1 dan ', batasAtas);
  writeln('Anda memiliki ', kesempatan, ' kesempatan untuk menebak.');

  repeat
    write('Masukkan tebakan Anda: ');
    readln(tebakan);

    if (tebakan < 1) or (tebakan > batasAtas) then
      writeln('Harap masukkan angka antara 1 dan ', batasAtas)
    else
    begin
      dec(kesempatan);
      if tebakan < angkaRahasia then
        writeln('Tebakanmu terlalu rendah bro.')
      else if tebakan > angkaRahasia then
        writeln('Tebakanmu terlalu tinggi bro.')
      else
      begin
        writeln('Selamat! Anda berhasil menebak angka dan memenangkan sepeda ', angkaRahasia, '!');
        break;
      end;
      
      if kesempatan > 0 then
        writeln('Kesempatan tersisa: ', kesempatan)
      else
        writeln('Yahahahah habis kesempatan.');
    end;
    
    writeln;
  until kesempatan = 0;

  if tebakan <> angkaRahasia then
    writeln('Cieee kalah. Angka yang benar adalah: ', angkaRahasia);

2:
  writeln('Apakah Anda ingin bermain lagi? (Y/N)');
  readln(mainLagi);
  case UpCase(mainLagi) of
    'Y': goto 1;
    'N': writeln('Terima kasih telah bermain bro!');
  else
    goto 2;
  end;
end.