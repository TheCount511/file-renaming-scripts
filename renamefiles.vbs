set objFso = CreateObject("Scripting.FileSystemObject")
set Folder = objFSO.GetFolder(".\")

For Each File In Folder.Files
  sNewFile = File.Name
  sNewFile = Replace(sNewFile, " ", "")
  if(sNewFile<>File.Name) then
    File.Move(File.ParentFolder+"\"+sNewFile)
  end if

Next