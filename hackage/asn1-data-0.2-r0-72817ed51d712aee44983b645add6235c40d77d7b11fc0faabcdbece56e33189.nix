{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "asn1-data"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "";
      url = "";
      synopsis = "ASN1 data reader/writer in RAW/BER/DER/CER forms";
      description = "ASN1 data reader/writer in raw form with supports for high level forms of ASN1 (BER/CER/DER)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          ];
        };
      exes = {
        "Tests" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }