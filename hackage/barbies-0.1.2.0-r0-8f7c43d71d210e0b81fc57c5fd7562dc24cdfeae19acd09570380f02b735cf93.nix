{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "barbies"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Daniel Gorin";
      maintainer = "jcpetruzza@gmail.com";
      author = "Daniel Gorin";
      homepage = "https://github.com/jcpetruzza/barbies#readme";
      url = "";
      synopsis = "Classes for working with types that can change clothes.";
      description = "Types that are parametric on a functor are like Barbies that have an outfit for each role. This package provides the basic abstractions to work with them comfortably.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.bifunctors) ]; };
      tests = {
        "barbies-test" = {
          depends = [
            (hsPkgs.barbies)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }