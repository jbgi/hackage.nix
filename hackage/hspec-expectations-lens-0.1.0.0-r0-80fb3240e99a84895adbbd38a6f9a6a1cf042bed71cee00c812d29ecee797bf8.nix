{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hspec-expectations-lens"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matvey.aksenov@gmail.com";
      author = "Matvey Aksenov";
      homepage = "https://github.com/supki/hspec-expectations-lens";
      url = "";
      synopsis = "Hspec expectations for the lens stuff";
      description = "Package adds hspec expectations (@\\`shouldX\\`@ things)\nthat work nicely with the \"lens\" library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.hspec-expectations) (hsPkgs.HUnit) ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations-lens)
            (hsPkgs.lens)
            (hsPkgs.silently)
            ];
          };
        };
      };
    }