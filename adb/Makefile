# ADB makefile
# ------------

CC= $(TOOLCHAIN)gcc

SRCS+= adb.c
SRCS+= fdevent.c
SRCS+= adb_client.c
SRCS+= commandline.c
SRCS+= console.c
SRCS+= file_sync_client.c
SRCS+= get_my_path_linux.c
SRCS+= services.c
SRCS+= sockets.c
SRCS+= transport.c
SRCS+= transport_local.c
SRCS+= transport_usb.c
SRCS+= usb_linux.c
SRCS+= usb_vendors.c
SRCS+= adb_auth_host.c

VPATH+= ../libcutils
SRCS+= socket_inaddr_any_server.c
SRCS+= socket_local_client.c
SRCS+= socket_local_server.c
SRCS+= socket_loopback_client.c
SRCS+= socket_loopback_server.c
SRCS+= socket_network_client.c
SRCS+= load_file.c

VPATH+= ../libzipfile
SRCS+= centraldir.c
SRCS+= zipfile.c

VPATH+= ../external/zlib/src
SRCS+= adler32.c
SRCS+= compress.c
SRCS+= crc32.c
SRCS+= deflate.c
SRCS+= infback.c
SRCS+= inffast.c
SRCS+= inflate.c
SRCS+= inftrees.c
SRCS+= trees.c
SRCS+= uncompr.c
SRCS+= zutil.c

CFLAGS+= -DADB_HOST=1
CFLAGS+= -DHAVE_FORKEXEC=1
CFLAGS+= -DHAVE_SYMLINKS
CFLAGS+= -DHAVE_TERMIO_H
CFLAGS+= -DHAVE_SYS_SOCKET_H
CFLAGS+= -DHAVE_OFF64_T
CFLAGS+= -D_GNU_SOURCE
CFLAGS+= -D_XOPEN_SOURCE
CFLAGS+= -I.
CFLAGS+= -I../include
CFLAGS+= -I../external/zlib
CFLAGS+= -I../external/openssl/include
CFLAGS+= -I../base/include
CFLAGS+= -O2 -g -Wall -Wno-unused-parameter

LIBS= -lcrypto -lpthread -lrt

OBJS= $(SRCS:.c=.o)

all: adb

adb: $(OBJS)
	$(CC) -o $@ $(CFLAGS) $(OBJS) $(LIBS)

clean:
	rm -rf $(OBJS) adb

