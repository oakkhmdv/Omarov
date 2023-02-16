program DynamicArray;
var
  arr: array of Integer;
  n, i, j, temp: Integer;
begin
  write('Enter the size of the array: ');
  readln(n);

  SetLength(arr, n);

  for i := 0 to n - 1 do
  begin
    arr[i] := i + 1;
  end;

  for i := n - 1 downto 1 do
  begin
    j := Random(i + 1);
    temp := arr[i];
    arr[i] := arr[j];
    arr[j] := temp;
  end;

  writeln('The shuffled array is:');
  for i := 0 to n - 1 do
  begin
    writeln(arr[i]);
  end;
end.