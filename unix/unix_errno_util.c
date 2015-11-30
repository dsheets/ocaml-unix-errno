#include <errno.h>

void unix_errno_reset() { errno = 0; }

int unix_errno_get() { return errno; }
