{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { openssl = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "mysql-haskell"; version = "0.5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Winterland";
      maintainer = "winterland1989@gmail.com";
      author = "winterland1989";
      homepage = "https://github.com/winterland1989/mysql-haskell";
      url = "";
      synopsis = "pure haskell MySQL driver";
      description = "pure haskell MySQL driver";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.monad-loops)
          (hsPkgs.network)
          (hsPkgs.io-streams)
          (hsPkgs.tcp-streams)
          (hsPkgs.wire-streams)
          (hsPkgs.binary)
          (hsPkgs.binary-parsers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.time)
          (hsPkgs.scientific)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.blaze-textual)
          (hsPkgs.word24)
          (hsPkgs.tls)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (flags.openssl) (hsPkgs.HsOpenSSL);
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.mysql-haskell)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.io-streams)
            (hsPkgs.time)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }