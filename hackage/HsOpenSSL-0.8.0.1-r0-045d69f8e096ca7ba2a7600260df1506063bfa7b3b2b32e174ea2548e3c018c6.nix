{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HsOpenSSL"; version = "0.8.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "Adam Langley <agl at imperialviolet dot org>,\nPHO <pho at cielonegro dot org>,\nTaru Karttunen <taruti at taruti dot net>";
      homepage = "http://cielonegro.org/HsOpenSSL.html";
      url = "";
      synopsis = "(Incomplete) OpenSSL binding for Haskell";
      description = "HsOpenSSL is an (incomplete) OpenSSL binding for Haskell. It\ncan generate RSA and DSA keys, read and write PEM files,\ngenerate message digests, sign and verify messages, encrypt\nand decrypt messages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.network)
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.11"
          then [ (hsPkgs.integer-gmp) ]
          else [ (hsPkgs.integer) ]);
        libs = if system.isWindows
          then [ (pkgs."eay32") (pkgs."ssl2") ]
          else [ (pkgs."crypto") (pkgs."ssl") ];
        };
      };
    }