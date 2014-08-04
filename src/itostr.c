#include <string.h>
#include <math.h>
#include "itostr.h"

static const char base36[37] = "0123456789abcdefghijklmnopqrstuvwxyz";

SEXP itostr (SEXP x, SEXP base) {
    const R_len_t n = length(x);
    const R_len_t b = INTEGER(base)[0];
    SEXP res = PROTECT(allocVector(STRSXP, n));

    const R_len_t buflen = log(exp2(64) / log(b)) + 1;
    char buffer[buflen];
    buffer[buflen] = '\0';

    for (R_len_t i = 0; i < n; i++) {
        R_len_t offset = buflen;
        int xi = INTEGER(x)[i];
        do {
            buffer[--offset] = base36[xi % b];
        } while (xi /= b);

        SET_STRING_ELT(res, i, mkChar(&buffer[offset]));
    }

    UNPROTECT(1);
    return res;
}
