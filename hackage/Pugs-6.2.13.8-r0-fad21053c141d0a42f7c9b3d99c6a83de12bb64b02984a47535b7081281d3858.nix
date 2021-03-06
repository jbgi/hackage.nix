{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { optimize = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Pugs"; version = "6.2.13.8"; };
      license = "BSD-3-Clause";
      copyright = "2005-2008, The Pugs Contributors";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "http://pugscode.org/";
      url = "";
      synopsis = "A Perl 6 Implementation";
      description = "A Perl 6 Implementation";
      buildType = "Custom";
      };
    components = {
      exes = {
        "pugs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.parsec)
            (hsPkgs.network)
            (hsPkgs.pretty)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.array)
            (hsPkgs.directory)
            (hsPkgs.utf8-string)
            (hsPkgs.binary)
            (hsPkgs.haskeline)
            (hsPkgs.MetaObject)
            (hsPkgs.HsParrot)
            (hsPkgs.pugs-compat)
            (hsPkgs.pugs-DrIFT)
            (hsPkgs.stringtable-atom)
            (hsPkgs.HsSyck)
            ];
          };
        };
      };
    }