#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.112                       #
#------------------------------------------------------------------------------#


WRKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = 
CFLAGS =  `fltk-config --cxxflags` -fexceptions -D_THREAD_SAFE -D_REENTRANT
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS =  `fltk-config --use-images --ldstaticflags`

INC_DEBUG =  $(INC)
CFLAGS_DEBUG =  $(CFLAGS) -g
RESINC_DEBUG =  $(RESINC)
RCFLAGS_DEBUG =  $(RCFLAGS)
LIBDIR_DEBUG =  $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG =  $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/flpcui

INC_RELEASE =  $(INC)
CFLAGS_RELEASE =  $(CFLAGS) -O2 -s
RESINC_RELEASE =  $(RESINC)
RCFLAGS_RELEASE =  $(RCFLAGS)
LIBDIR_RELEASE =  $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE =  $(LDFLAGS)
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/flpcui

OBJ_DEBUG = $(OBJDIR_DEBUG)/flpcui.o $(OBJDIR_DEBUG)/lpc21isp/adprog.o $(OBJDIR_DEBUG)/lpc21isp/lpc21isp.o $(OBJDIR_DEBUG)/lpc21isp/lpcprog.o $(OBJDIR_DEBUG)/main.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/flpcui.o $(OBJDIR_RELEASE)/lpc21isp/adprog.o $(OBJDIR_RELEASE)/lpc21isp/lpc21isp.o $(OBJDIR_RELEASE)/lpc21isp/lpcprog.o $(OBJDIR_RELEASE)/main.o

all: Debug Release

clean: clean_Debug clean_Release

before_Debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)
	test -d $(OBJDIR_DEBUG)/lpc21isp || mkdir -p $(OBJDIR_DEBUG)/lpc21isp

after_Debug: 

Debug: before_Debug out_Debug after_Debug

out_Debug: $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LDFLAGS_DEBUG) $(LIBDIR_DEBUG) $(OBJ_DEBUG) $(LIB_DEBUG) -o $(OUT_DEBUG)

$(OBJDIR_DEBUG)/flpcui.o: flpcui.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c flpcui.cpp -o $(OBJDIR_DEBUG)/flpcui.o

$(OBJDIR_DEBUG)/lpc21isp/adprog.o: lpc21isp/adprog.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c lpc21isp/adprog.c -o $(OBJDIR_DEBUG)/lpc21isp/adprog.o

$(OBJDIR_DEBUG)/lpc21isp/lpc21isp.o: lpc21isp/lpc21isp.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c lpc21isp/lpc21isp.c -o $(OBJDIR_DEBUG)/lpc21isp/lpc21isp.o

$(OBJDIR_DEBUG)/lpc21isp/lpcprog.o: lpc21isp/lpcprog.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c lpc21isp/lpcprog.c -o $(OBJDIR_DEBUG)/lpc21isp/lpcprog.o

$(OBJDIR_DEBUG)/main.o: main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c main.cpp -o $(OBJDIR_DEBUG)/main.o

clean_Debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)
	rm -rf $(OBJDIR_DEBUG)/lpc21isp

before_Release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)
	test -d $(OBJDIR_RELEASE)/lpc21isp || mkdir -p $(OBJDIR_RELEASE)/lpc21isp

after_Release: 

Release: before_Release out_Release after_Release

out_Release: $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LDFLAGS_RELEASE) $(LIBDIR_RELEASE) $(OBJ_RELEASE) $(LIB_RELEASE) -o $(OUT_RELEASE)

$(OBJDIR_RELEASE)/flpcui.o: flpcui.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c flpcui.cpp -o $(OBJDIR_RELEASE)/flpcui.o

$(OBJDIR_RELEASE)/lpc21isp/adprog.o: lpc21isp/adprog.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c lpc21isp/adprog.c -o $(OBJDIR_RELEASE)/lpc21isp/adprog.o

$(OBJDIR_RELEASE)/lpc21isp/lpc21isp.o: lpc21isp/lpc21isp.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c lpc21isp/lpc21isp.c -o $(OBJDIR_RELEASE)/lpc21isp/lpc21isp.o

$(OBJDIR_RELEASE)/lpc21isp/lpcprog.o: lpc21isp/lpcprog.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c lpc21isp/lpcprog.c -o $(OBJDIR_RELEASE)/lpc21isp/lpcprog.o

$(OBJDIR_RELEASE)/main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c main.cpp -o $(OBJDIR_RELEASE)/main.o

clean_Release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)
	rm -rf $(OBJDIR_RELEASE)/lpc21isp

.PHONY: before_Debug after_Debug clean_Debug before_Release after_Release clean_Release

