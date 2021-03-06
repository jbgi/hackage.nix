{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "bert"; version = "1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011 marius a. eriksen";
      maintainer = "marius a. eriksen";
      author = "marius a. eriksen";
      homepage = "";
      url = "";
      synopsis = "BERT implementation";
      description = "Implements the BERT serialization and RPC protocols\ndescribed at <http://bert-rpc.org/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.unix)
          (hsPkgs.time)
          (hsPkgs.parsec)
          ];
        };
      exes = { "bert" = {}; };
      };
    }