program ConvertSeconds;
var
  totalSeconds, hours, minutes, seconds: Integer;
begin
  // Запросим у пользователя количество секунд
  write('Enter the number of seconds: ');
  readln(totalSeconds);

  // Вычислим количество часов, минут и секунд
  hours := totalSeconds div 3600;
  minutes := (totalSeconds mod 3600) div 60;
  seconds := totalSeconds mod 60;

  // Выведем результат на экран
  writeln(Format('%.4d:%.2d:%.2d', [hours, minutes, seconds]));
end.
