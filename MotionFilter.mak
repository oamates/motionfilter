# Microsoft Developer Studio Generated NMAKE File, Based on motionfilter.dsp
!IF "$(CFG)" == ""
CFG=motionfilter - Win32 Debug
!MESSAGE No configuration specified. Defaulting to motionfilter - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "motionfilter - Win32 Release" && "$(CFG)" != "motionfilter - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "motionfilter.mak" CFG="motionfilter - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "motionfilter - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "motionfilter - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "motionfilter - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\motionfilter.ax"


CLEAN :
	-@erase "$(INTDIR)\ezprop.obj"
	-@erase "$(INTDIR)\ezprop.res"
	-@erase "$(INTDIR)\motionfilter.obj"
	-@erase "$(OUTDIR)\motionfilter.ax"
	-@erase "$(OUTDIR)\motionfilter.exp"
	-@erase "$(OUTDIR)\motionfilter.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Gz /MD /W3 /Gy /I "..\..\BaseClasses" /I "..\..\..\..\..\include" /D DBG=0 /D WINVER=0x400 /D _X86_=1 /D "_DLL" /D "_MT" /D "_WIN32" /D "WIN32" /D "STRICT" /D "INC_OLE2" /D try=__try /D except=__except /D leave=__leave /D finally=__finally /Fo"$(INTDIR)\\" /Oxs /GF /D_WIN32_WINNT=-0x0400 /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\ezprop.res" /i "..\..\BaseClasses" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\motionfilter.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\BaseClasses\release\strmbase.lib msvcrt.lib quartz.lib vfw32.lib winmm.lib kernel32.lib advapi32.lib version.lib largeint.lib user32.lib gdi32.lib comctl32.lib ole32.lib olepro32.lib oleaut32.lib uuid.lib /nologo /entry:"DllEntryPoint@12" /dll /pdb:none /machine:I386 /nodefaultlib /def:".\motionfilter.def" /out:"$(OUTDIR)\motionfilter.ax" /implib:"$(OUTDIR)\motionfilter.lib" /libpath:"..\..\..\..\lib" /subsystem:windows,4.0 /opt:ref /release /debug:none /OPT:NOREF /OPT:ICF /stack:0x200000,0x200000
LINK32_OBJS= \
	"$(INTDIR)\ezprop.obj" \
	"$(INTDIR)\motionfilter.obj" \
	"$(INTDIR)\ezprop.res"

"$(OUTDIR)\motionfilter.ax" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "motionfilter - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\motionfilter.ax"


CLEAN :
	-@erase "$(INTDIR)\ezprop.obj"
	-@erase "$(INTDIR)\ezprop.res"
	-@erase "$(INTDIR)\motionfilter.obj"
	-@erase "$(OUTDIR)\motionfilter.ax"
	-@erase "$(OUTDIR)\motionfilter.exp"
	-@erase "$(OUTDIR)\motionfilter.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Gz /MDd /W3 /Z7 /Gy /I "..\..\BaseClasses" /I "..\..\..\..\..\include" /D "INC_OLE2" /D "STRICT" /D _WIN32_WINNT=0x0400 /D "WIN32" /D "_WIN32" /D "_MT" /D "_DLL" /D _X86_=1 /D WINVER=0x0400 /D DBG=1 /D "DEBUG" /D "_DEBUG" /D try=__try /D except=__except /D leave=__leave /D finally=__finally /Fo"$(INTDIR)\\" /Oid /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\ezprop.res" /i "..\..\BaseClasses" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\motionfilter.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=..\..\BaseClasses\debug\strmbasd.lib msvcrtd.lib quartz.lib vfw32.lib winmm.lib kernel32.lib advapi32.lib version.lib largeint.lib user32.lib gdi32.lib comctl32.lib ole32.lib olepro32.lib oleaut32.lib uuid.lib /nologo /entry:"DllEntryPoint@12" /dll /pdb:none /machine:I386 /nodefaultlib /def:".\motionfilter.def" /out:"$(OUTDIR)\motionfilter.ax" /implib:"$(OUTDIR)\motionfilter.lib" /libpath:"..\..\..\..\lib" /debug:mapped,full /subsystem:windows,4.0 /stack:0x200000,0x200000
DEF_FILE= \
	".\motionfilter.def"
LINK32_OBJS= \
	"$(INTDIR)\ezprop.obj" \
	"$(INTDIR)\motionfilter.obj" \
	"$(INTDIR)\ezprop.res"

"$(OUTDIR)\motionfilter.ax" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("motionfilter.dep")
!INCLUDE "motionfilter.dep"
!ELSE 
!MESSAGE Warning: cannot find "motionfilter.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "motionfilter - Win32 Release" || "$(CFG)" == "motionfilter - Win32 Debug"
SOURCE=.\ezprop.cpp

"$(INTDIR)\ezprop.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ezprop.rc

"$(INTDIR)\ezprop.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\motionfilter.cpp

"$(INTDIR)\motionfilter.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

