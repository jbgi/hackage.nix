{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "crypto-cipher-benchmarks"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-cipher";
      url = "";
      synopsis = "Generic cryptography cipher benchmarks";
      description = "Generic cryptography cipher benchmarks";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.criterion)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.byteable)
          (hsPkgs.securemem)
          (hsPkgs.crypto-cipher-types)
          ];
        };
      };
    }