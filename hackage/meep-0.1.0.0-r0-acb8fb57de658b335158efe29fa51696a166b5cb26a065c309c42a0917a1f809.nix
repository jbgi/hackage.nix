{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "meep"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matvey.aksenov@gmail.com";
      author = "Matvey Aksenov";
      homepage = "";
      url = "";
      synopsis = "A silly container";
      description = "A @Map@-like structure that contains up to one key-value pair";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.lens) (hsPkgs.semigroups) ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations-lens)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            (hsPkgs.semigroups)
            ];
          };
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }