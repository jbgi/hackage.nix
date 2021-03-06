{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-route"; version = "0.4.0"; };
      license = "MPL-2.0";
      copyright = "2014 Roman S. Borschel";
      maintainer = "Roman S. Borschel <roman@pkaboo.org>";
      author = "Roman S. Borschel";
      homepage = "";
      url = "";
      synopsis = "Minimalistic, efficient routing for WAI.";
      description = "\nSimple routing for applications using the WAI, based on an\nefficient tree structure. Routes are defined as string literals\nwhereby path segments beginning with a ':' indicate captures.\n\nA sample is available at: <https://github.com/romanb/wai-route/blob/master/sample/Main.hs>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.unordered-containers)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          ];
        };
      tests = {
        "wai-route-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.wai)
            (hsPkgs.wai-route)
            ];
          };
        };
      };
    }