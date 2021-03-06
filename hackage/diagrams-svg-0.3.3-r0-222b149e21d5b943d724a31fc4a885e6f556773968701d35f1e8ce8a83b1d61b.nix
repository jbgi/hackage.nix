{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "diagrams-svg"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "deepak.jois@gmail.com";
      author = "Felipe Lessa, Deepak Jois";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "SVG backend for diagrams drawing EDSL.";
      description = "This package provides a modular backend for rendering diagrams\ncreated with the diagrams EDSL using SVG.  It uses\n@blaze-svg@ to be fast, pure-Haskell backend.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          (hsPkgs.vector-space)
          (hsPkgs.colour)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.blaze-svg)
          (hsPkgs.cmdargs)
          (hsPkgs.split)
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    }