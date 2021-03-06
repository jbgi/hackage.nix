{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vinyl"; version = "0.8.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "acowley@gmail.com";
      author = "Jonathan Sterling";
      homepage = "";
      url = "";
      synopsis = "Extensible Records";
      description = "Extensible records for Haskell with lenses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.ghc-prim) (hsPkgs.array) ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.vinyl)
            (hsPkgs.doctest)
            (hsPkgs.singletons)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vinyl)
            (hsPkgs.microlens)
            (hsPkgs.hspec)
            (hsPkgs.should-not-typecheck)
            ];
          };
        };
      benchmarks = {
        "storable" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.criterion)
            (hsPkgs.vinyl)
            (hsPkgs.mwc-random)
            (hsPkgs.microlens)
            (hsPkgs.linear)
            (hsPkgs.primitive)
            ];
          };
        "equality" = {
          depends = [ (hsPkgs.base) (hsPkgs.criterion) (hsPkgs.vinyl) ];
          };
        "accessors" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.tagged)
            (hsPkgs.vinyl)
            ];
          };
        };
      };
    }