{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; tests = true; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "happstack-ixset"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Efficient relational queries on Haskell sets.";
      description = "Just pick which parts of your data structures you want indexed using an easy to use template-haskell function. Spare yourself the need to write, run, and maintain code that marshalls your data to/from an external relational database just for efficient queries. happstack-ixset relies on generics and TH to spare you the boilerplate normally required for such tasks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.happstack-util)
          (hsPkgs.happstack-data)
          (hsPkgs.template-haskell)
          (hsPkgs.syb-with-class)
          (hsPkgs.containers)
          ] ++ (if flags.base4
          then [ (hsPkgs.base) (hsPkgs.syb) ]
          else [ (hsPkgs.base) ]);
        };
      exes = { "happstack-ixset-tests" = { depends = [ (hsPkgs.HUnit) ]; }; };
      };
    }