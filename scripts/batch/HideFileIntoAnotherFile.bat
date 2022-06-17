type superSecretFile.txt > nothingToSeeHere.txt:superSecretFile.txt
del superSecretFile.txt

notepad nothingToSeeHere.txt:superSecretFile.txt

dir /r

attrib +h nothingToSeeHere.txt