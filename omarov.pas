program DynamicArray;
{$APPTYPE CONSOLE}

var
	arr: array of Integer;
	n, i, j, temp: Integer;
 
// all indents must be 4 spaces or tab(if it is equal to 4 spaces)
begin
	write('Enter the size of the array: ');
	readln(n);

	SetLength(arr, n);
	
	//high(arr) is better than n-1
	for i := 0 to high(arr) do begin 
		arr[i] := i + 1;
	end;

	for i := high(arr) downto 1 do begin //begin on the same line
		j := Random(i + 1);
		temp := arr[i];
		arr[i] := arr[j];
		arr[j] := temp;
	end;

	writeln('The shuffled array is:');
	for i := 0 to high(arr) do begin
		writeln(arr[i]);
	end;
end.