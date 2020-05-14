Batch convert all pdfs to jpeg
==============================

1) Make sure you have WSL installed (Windows Subsystem for Linux)
https://docs.microsoft.com/en-us/windows/wsl/install-win10

2) Make sure you have poppler-utils installed on your WSL
Otherwise run 
     sudo apt install poppler-utils
in the WSL terminal

3) Open WSL terminal

4) Go to the directory with the pdf files

5) run the following loop
     for i in *.pdf; do pdftocairo "$i" -jpeg -singlefile; done
https://stackoverflow.com/questions/10523415/execute-command-on-all-files-in-a-directory

6) Check if files were generated...


Convert single pdf to jpg
=========================

step 1) to 4) are the same

5) run the following command
	 pdftocairo mypdffile.pdf -jpeg -singlefile

6) Check if file was generated