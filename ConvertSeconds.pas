program ConvertSeconds;
{$APPTYPE CONSOLE} // for console application

Uses
	SysUtils; //for write, readln, Format

var
  totalSeconds, hours, minutes, seconds: Integer;
  
begin
  write('Enter the number of seconds: ');
  readln(totalSeconds);

  hours := totalSeconds div 3600;
  minutes := (totalSeconds mod 3600) div 60;
  seconds := totalSeconds mod 60;

  writeln(Format('%.4d:%.2d:%.2d', [hours, minutes, seconds]));
end.