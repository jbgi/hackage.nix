{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bindings-codec2"; version = "0.1.1.0"; };
      license = "GPL-2.0-only";
      copyright = "(C) 2014 Ricky Elrod";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod";
      homepage = "https://github.com/relrod/Codec2-hs";
      url = "";
      synopsis = "Very low-level FFI bindings for Codec2";
      description = "Bindings for Codec2 generated by jwiegley's c2hsc/bindings-dsl";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bindings-DSL) ];
        libs = [ (pkgs."codec2") ];
        };
      exes = {
        "bindings-codec2-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bindings-codec2)
            (hsPkgs.bytestring)
            (hsPkgs.split)
            ];
          };
        };
      };
    }