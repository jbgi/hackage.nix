{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "crc"; version = "0.0.1"; };
      license = "MIT";
      copyright = "2015 Michael Xavier";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "http://github.com/MichaelXavier/crc#readme";
      url = "";
      synopsis = "Implements various Cyclic Redundancy Checks (CRC)";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.vector) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.crc)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.bytestring)
            (hsPkgs.resourcet)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.crc)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }