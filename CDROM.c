#include <sys/types.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <linux/cdrom.h>
#include <stdio.h>
#include <stdlib.h>
int main( int argc, char **argv )
{
    int cdrom;
    int i;

    /*  open device */
    if ((cdrom = open("/dev/cdrom",O_RDONLY | O_NONBLOCK)) < 0) {
        perror("open");
        exit(1);
    }

    /*  eject  */
    //if(ioctl(cdrom, CDROMCLOSETRAY) < 0) --> closetray
    if(ioctl(cdrom, CDROMEJECT) < 0) {
        printf("Could not eject cdrom tray\n");
    }

    /*  close device */
    close(cdrom);
    return 0;
}

