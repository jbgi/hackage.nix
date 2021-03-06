{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "web-routes"; version = "0.27.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "http://www.happstack.com/docs/crashcourse/index.html#web-routes";
      url = "";
      synopsis = "portable, type-safe URL routing";
      description = "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.exceptions)
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.2") [
          (hsPkgs.ghc-prim)
          (hsPkgs.split)
          ];
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.web-routes)
            ];
          };
        };
      };
    }