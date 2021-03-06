{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { fast-bignum = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "HsOpenSSL"; version = "0.11.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "Adam Langley, Mikhail Vorozhtsov, PHO, Taru Karttunen";
      homepage = "https://github.com/phonohawk/HsOpenSSL";
      url = "";
      synopsis = "Partial OpenSSL binding for Haskell";
      description = "\nHsOpenSSL is an OpenSSL binding for Haskell. It can generate RSA\nand DSA keys, read and write PEM files, generate message digests,\nsign and verify messages, encrypt and decrypt messages. It has\nalso some capabilities of creating SSL clients and servers.\n\nThis package is in production use by a number of Haskell based\nsystems and stable. You may also be interested in the @tls@ package,\n<http://hackage.haskell.org/package/tls>, which is a pure Haskell\nimplementation of SSL.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          ] ++ (pkgs.lib).optionals (flags.fast-bignum) (if compiler.isGhc && (compiler.version).ge "6.11"
          then [ (hsPkgs.integer-gmp) ]
          else [ (hsPkgs.integer) ]);
        libs = if system.isWindows
          then [ (pkgs."eay32") (pkgs."ssl32") ]
          else [ (pkgs."crypto") (pkgs."ssl") ];
        };
      };
    }