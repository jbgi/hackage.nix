{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; tests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack"; version = "0.5.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "The haskell application server stack + code generation";
      description = "The haskell application server stack";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.happstack-data)
          (hsPkgs.happstack-ixset)
          (hsPkgs.happstack-server)
          (hsPkgs.happstack-state)
          (hsPkgs.happstack-util)
          (hsPkgs.harp)
          (hsPkgs.hslogger)
          (hsPkgs.hsx)
          (hsPkgs.hsp)
          (hsPkgs.HStringTemplate)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
          ] ++ (if flags.base4
          then [ (hsPkgs.base) (hsPkgs.syb) ]
          else [ (hsPkgs.haskell-src-exts) (hsPkgs.HStringTemplate) ]);
        };
      exes = {
        "happstack" = { depends = [ (hsPkgs.directory) (hsPkgs.filepath) ]; };
        "happstack-tests" = {
          depends = (pkgs.lib).optional (flags.tests) (hsPkgs.HUnit);
          };
        };
      };
    }