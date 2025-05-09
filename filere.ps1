$filePath = "C:\path\to\your\file.txt"

# Read file content into an array
$lines = Get-Content $filePath

# Insert "xxxx" before line 3
$lines = $lines[0..1] + "xxxx" + $lines[2..($lines.Length - 1)]

# Write modified content back to the file
$lines | Set-Content $filePath

using System;
using System.IO;
using System.Linq;

class Program
{
    static void Main()
    {
        string inputFile = "input.txt";
        string fileX = "fileX.txt";
        string resultFile = "result.txt";

        // Read all lines from input file
        string[] lines = File.ReadAllLines(inputFile);
        string[] fileXContent = File.ReadAllLines(fileX);

				var newCltID = lines.FirstOrDefault(
					line => Regex.IsMatch(line, 
						@"\s+:new\.""temp_C""\s*:="); 
				newCltID = Regex.Replace(newCltID, @"^\s+", "");
				
        // Extract required parts
        var A = lines.Take(2);          // First 5 lines
        var Cmt = "";          // First 5 lines
        var B = lines.Skip(3).Take(12);  // Lines 6 to 11
        var C = lines.Skip(lines.Length - 4); // Last 5 lines
        var D = fileXContent.Replace("@ccc@", newCltID);           // Entire fileX

        // Merge and write to result file
        var result = A.Concat(Cmt).Concat(newCltID).Concat(B).Concat(D).Concat(C);
        File.WriteAllLines(resultFile, result);

        Console.WriteLine("File processing complete: " + resultFile);
    }
}


