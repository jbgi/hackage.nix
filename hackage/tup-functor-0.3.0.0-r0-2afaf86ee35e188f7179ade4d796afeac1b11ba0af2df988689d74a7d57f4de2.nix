{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "tup-functor"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2014 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) hu";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Homogeneous tuples";
      description = "Homogeneous tuples (also known as vectors), with various instances, most notably 'Functor' and 'Applicative'.\nThe primary goal of the library is to help functor-oriented programming\n(for low-dimensional linear algebra, there are more specific packages, eg. @vect@).\nA small preprocessor for a tuple syntax is also included. We provide 4 different implementations,\nwith a unified type class interface.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.cpphs) ]; };
      exes = {
        "tuplepp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec2)
            (hsPkgs.haskell-src-exts)
            ];
          };
        };
      };
    }