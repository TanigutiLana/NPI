# Inside the folder that has the files to be renamed
dir | foreach { rename-item $_ $_.Name.Replace("HD", "0") }
# Rename extension
dir | foreach { $a = $_.name -as [double]
                $a = $a + 0.001
                $b = ($a -as [string])
                if($b.length -eq 5){
                 rename-item $_.name -NewName ("X" + $b)
                }
                ElseIf($b.length -eq 4){
                 rename-item $_.name -NewName ("X" + $b + "0")
                }
                Else {
                 rename-item $_.name -NewName ("X" + $b + "00")
                }
              }
# Back to the original name
dir | foreach { rename-item $_ $_.Name.Replace("X0.", "HD.") }
