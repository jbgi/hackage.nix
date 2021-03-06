{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams-svg"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Felipe Lessa, Deepak Jois";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "SVG backend for diagrams drawing EDSL.";
      description = "This package provides a modular backend for rendering\ndiagrams created with the diagrams EDSL to SVG\nfiles.  It uses @blaze-svg@ to be a fast, native\nHaskell backend, making it suitable for use on\nany platform.\n\nThe package provides the following modules:\n\n* \"Diagrams.Backend.SVG.CmdLine\" - if you're\njust getting started with diagrams, begin here.\n\n* \"Diagrams.Backend.SVG\" - look at this next.\nThe general API for the SVG backend.\n\nAdditional documentation can be found in the\nREADME file distributed with the source tarball or\nviewable on GitHub:\n<https://github.com/diagrams/diagrams-svg/blob/master/README.md>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.vector-space)
          (hsPkgs.colour)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.monoid-extras)
          (hsPkgs.blaze-svg)
          (hsPkgs.blaze-markup)
          (hsPkgs.JuicyPixels)
          (hsPkgs.split)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.hashable)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim)) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    }