{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "text-ldap"; version = "0.1.1.13"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2018 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "Parser and Printer for LDAP text data stream";
      description = "This package contains Parser and Printer for\nLDAP text data stream like OpenLDAP backup LDIF.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.dlist)
          (hsPkgs.memory)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
        };
      exes = {
        "parseTest" = {
          depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.text-ldap) ];
          };
        };
      tests = {
        "pp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            (hsPkgs.text-ldap)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-simple)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
          };
        };
      };
    }