{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { text-names-broken = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "enumerator"; version = "0.4.3.1"; };
      license = "MIT";
      copyright = "Copyright (c) John Millikin 2010";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "http://john-millikin.com/software/enumerator/";
      url = "";
      synopsis = "Implementation of Oleg Kiselyov's left-fold enumerators";
      description = "Based on Oleg Kiselyov's IterateeM: <http://okmij.org/ftp/Haskell/Iteratee/IterateeM.hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [ (hsPkgs.base) ]
          else [ (hsPkgs.base) (hsPkgs.extensible-exceptions) ])) ++ [
          (hsPkgs.text)
          ];
        };
      };
    }