{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "gmpint"; version = "0.1.0.10"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "GMP integer conversions";
      description = "This defines a 'Storable' instance for GMP's @mpz@ type and provides functions for working with GMP integers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.micro-recursion-schemes) ];
        libs = [ (pkgs."gmp") ];
        };
      };
    }