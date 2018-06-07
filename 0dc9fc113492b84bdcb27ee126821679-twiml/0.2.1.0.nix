{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "twiml";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "markandrusroberts@gmail.com";
        author = "Mark Andrus Roberts";
        homepage = "https://github.com/markandrus/twiml-haskell";
        url = "";
        synopsis = "TwiML library for Haskell";
        description = "TwiML library for Haskell";
        buildType = "Simple";
      };
      components = {
        twiml = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.lens
            hsPkgs.network-uri
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.void
            hsPkgs.xml
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }