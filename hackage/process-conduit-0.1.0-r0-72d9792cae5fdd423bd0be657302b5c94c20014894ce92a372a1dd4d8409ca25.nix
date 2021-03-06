{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "process-conduit"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2012, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/tanakh/process-conduit";
      url = "";
      synopsis = "Conduits for processes";
      description = "Conduits for processes.\nFor more details: <https://github.com/tanakh/process-conduit/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.process)
          (hsPkgs.conduit)
          (hsPkgs.shakespeare-text)
          ];
        };
      exes = {
        "process-conduit" = {
          depends = [ (hsPkgs.base) (hsPkgs.conduit) (hsPkgs.process-conduit) ];
          };
        "process-qq" = {
          depends = [ (hsPkgs.base) (hsPkgs.process-conduit) ];
          };
        };
      };
    }