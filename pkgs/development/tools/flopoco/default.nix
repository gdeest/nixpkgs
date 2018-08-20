{ stdenv, fetchurl, bison, boost, flex, gsl, libxml2, cmake, mpfi, mpfr, sollya }:

stdenv.mkDerivation rec {
  name = "flopoco-4.1.2";

  src = fetchurl {
    url = "https://gforge.inria.fr/frs/download.php/file/37213/${name}.tgz";
    sha256 = "0q1nin67ns66m0ghagwzr19ljqynjhq254rmv4gfb8mkvidbjj9i";
  };

  builder = ./builder.sh;
  buildInputs = [ bison boost flex gsl cmake libxml2 mpfi mpfr sollya ];

  enableParallelBuilding = true;

  meta = {
    homepage = http://flopoco.gforge.inria.fr;
    description = "A tool for generating arithmetic hardware operators";
  };
}
