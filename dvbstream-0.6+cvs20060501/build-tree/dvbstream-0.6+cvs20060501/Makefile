

CC=gcc
CFLAGS =  -g -Wall -O2 -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE
OBJS=dvbstream dumprtp ts_filter rtpfeed rtp.o 

INCS=-I ../DVB/include

ifdef UK
  CFLAGS += -DUK
endif

ifdef FINLAND
  CFLAGS += -DFINLAND
endif

ifdef FINLAND2
  CFLAGS += -DFINLAND2
endif

ifdef AUSTRALIA
  CFLAGS += -DAUSTRALIA
endif

all: $(OBJS)

dvbstream: dvbstream.c rtp.o tune.o mpegtools/ctools.o mpegtools/remux.o mpegtools/transform.o mpegtools/ringbuffy.o
	$(CC) $(INCS) $(CFLAGS) -o dvbstream dvbstream.c rtp.o tune.o mpegtools/ctools.o mpegtools/remux.o mpegtools/transform.o mpegtools/ringbuffy.o

dumprtp: dumprtp.c rtp.o 
	$(CC) $(INCS) $(CFLAGS) -o dumprtp dumprtp.c rtp.o

rtpfeed: rtpfeed.c rtp.o 
	$(CC) $(INCS) $(CFLAGS) -o rtpfeed rtpfeed.c rtp.o

rtp.o: rtp.c rtp.h
	$(CC) $(INCS) $(CFLAGS) -c -o rtp.o rtp.c

tune.o: tune.c tune.h dvb_defaults.h
	$(CC) $(INCS) $(CFLAGS) -c -o tune.o tune.c

ts_filter: ts_filter.c
	$(CC) $(INCS) $(CFLAGS) -o ts_filter ts_filter.c

clean:
	rm -f  *.o mpegtools/*.o *~ $(OBJS)
