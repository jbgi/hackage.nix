{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gloss-examples"; version = "1.7.7.201204.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://gloss.ouroborus.net";
      url = "";
      synopsis = "Examples using the gloss library";
      description = "Legacy version for Haskell Platform 2012.04.\nYou will get better performance if you upgrade to the most recent version of GHC.\nExamples using the gloss graphics library.\nA mixed bag of fractals, particle simulations and cellular automata.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gloss-bitmap" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bmp)
            (hsPkgs.gloss)
            ];
          };
        "gloss-boids" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-clock" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-conway" = {
          depends = [ (hsPkgs.base) (hsPkgs.gloss) (hsPkgs.vector) ];
          };
        "gloss-draw" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-easy" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-eden" = {
          depends = [ (hsPkgs.base) (hsPkgs.gloss) (hsPkgs.random) ];
          };
        "gloss-flake" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-gameevent" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-hello" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-lifespan" = {
          depends = [ (hsPkgs.base) (hsPkgs.gloss) (hsPkgs.random) ];
          };
        "gloss-machina" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-occlusion" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-styrene" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.gloss)
            (hsPkgs.containers)
            ];
          };
        "gloss-tree" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-visibility" = {
          depends = [ (hsPkgs.base) (hsPkgs.vector) (hsPkgs.gloss) ];
          };
        "gloss-zen" = { depends = [ (hsPkgs.base) (hsPkgs.gloss) ]; };
        "gloss-crystal" = {
          depends = [ (hsPkgs.base) (hsPkgs.gloss) (hsPkgs.gloss-raster) ];
          };
        "gloss-ray" = {
          depends = [ (hsPkgs.base) (hsPkgs.gloss) (hsPkgs.gloss-raster) ];
          };
        "gloss-pulse" = {
          depends = [ (hsPkgs.base) (hsPkgs.gloss) (hsPkgs.gloss-raster) ];
          };
        "gloss-wave" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.vector)
            (hsPkgs.gloss)
            (hsPkgs.gloss-raster)
            ];
          };
        "gloss-fluid" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.vector)
            (hsPkgs.gloss)
            (hsPkgs.repa)
            (hsPkgs.repa-io)
            (hsPkgs.repa-algorithms)
            ];
          };
        "gloss-snow" = {};
        "gloss-mandel" = {};
        };
      };
    }