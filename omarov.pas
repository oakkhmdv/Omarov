program ShuffleArray;
var
  arr: array[1..100] of Integer;
  i, j, temp: Integer;
begin
 
  for i := 1 to 100 do
  begin
    arr[i] := i;
  end;
  
  
  for i := 100 downto 2 do
  begin
    j := Random(i) + 1;
    temp := arr[i];
    arr[i] := arr[j];
    arr[j] := temp;
  end;
  

  writeln('The shuffled array is:');
  for i := 1 to 100 do
  begin
    writeln(arr[i]);
  end;
end.