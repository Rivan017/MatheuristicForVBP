"C:\Program Files\SCIPOptSuite 8.0.4\bin\SCIP.exe < "C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\inputtest.exe"


FOR %G IN (C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Graphs\Grids\*.txt) DO (
	COPY /Y %G C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\input.txt
	"C:\Program Files\SCIPOptSuite 8.0.4\bin\SCIP.exe" < C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\SCIPinput.txt
	COPY /Y C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\out.txt "C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\ResultTest\Grids\Output_"%~nG%~xG
	)

FOR %G IN (C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Graphs\HarwellBoeing\*.txt) DO (
	COPY /Y %G C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\input.txt
	"C:\Program Files\SCIPOptSuite 8.0.4\bin\SCIP.exe" < C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\SCIPinput.txt
	COPY /Y C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\out.txt "C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\ResultTest\HarwellBoeing\Output_"%~nG%~xG
	)

FOR %G IN (C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Graphs\Hypercubes\*.txt) DO (
	COPY /Y %G C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\input.txt
	"C:\Program Files\SCIPOptSuite 8.0.4\bin\SCIP.exe" < C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\SCIPinput.txt
	COPY /Y C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\out.txt "C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\ResultTest\Hypercubes\Output_"%~nG%~xG
	)

FOR %G IN (C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Graphs\SmallFull\*.txt) DO (
	COPY /Y %G C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\input.txt
	"C:\Program Files\SCIPOptSuite 8.0.4\bin\SCIP.exe" < C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\SCIPinput.txt
	COPY /Y C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\out.txt "C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\ResultTest\SmallFull\Output_"%~nG%~xG
	)

FOR %G IN (C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Graphs\Trees\*.txt) DO (
	COPY /Y %G C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\input.txt
	"C:\Program Files\SCIPOptSuite 8.0.4\bin\SCIP.exe" < C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\SCIPinput.txt
	COPY /Y C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\out.txt "C:\Users\Rivan\Documents\Uni\Tesi\RICOPstuff\Test\ResultTest\Trees\Output_"%~nG%~xG
	)