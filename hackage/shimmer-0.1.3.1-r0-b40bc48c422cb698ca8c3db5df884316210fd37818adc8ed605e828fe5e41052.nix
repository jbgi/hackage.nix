{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "shimmer"; version = "0.1.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "Ben Lippmeier <benl@ouroborus.net>";
      homepage = "";
      url = "";
      synopsis = "The Reflective Lambda Machine";
      description = "The Reflective Lambda Machine";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
          ];
        };
      exes = {
        "shimmer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            ];
          };
        };
      };
    }