{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "dns"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "DNS library in Haskell";
      description = "DNS library for clients and servers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if compiler.isGhc && (compiler.version).ge "7"
          then [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-enumerator)
            (hsPkgs.binary)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.enumerator)
            (hsPkgs.iproute)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-enumerator)
            (hsPkgs.random)
            ]
          else [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-enumerator)
            (hsPkgs.binary)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.enumerator)
            (hsPkgs.iproute)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
            (hsPkgs.network-enumerator)
            (hsPkgs.random)
            ];
        };
      };
    }