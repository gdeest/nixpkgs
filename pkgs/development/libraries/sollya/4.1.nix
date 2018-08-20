{ stdenv, fetchurl, fplll, gmp, libxml2, mpfr, mpfi}:

stdenv.mkDerivation rec {
  name = "sollya-4.1";

  src = fetchurl {
    url = "https://gforge.inria.fr/frs/download.php/33151/${name}.tar.gz";
    sha256 = "1phin1vwh439zbw3z6hw613r97b8mjsrihc1dsxzgdp22w5m1xzv";
  };

  buildInputs = [ fplll gmp libxml2 mpfr mpfi ];

  enableParallelBuilding = true;

  meta = {
    homepage = http://sollya.gforce.inria.fr;
    license = stdenv.lib.licenses.cecill-c;
    description = "Sollya is a tool environment and a library for safe floating-point code development";
  };
}
