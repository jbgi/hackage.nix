{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rasterific-svg"; version = "0.3.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vincent Berthoux";
      author = "Vincent Berthoux";
      homepage = "";
      url = "";
      synopsis = "SVG renderer based on Rasterific.";
      description = "SVG renderer that will let you render svg-tree parsed\nSVG file to a JuicyPixel image or Rasterific Drawing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.binary)
          (hsPkgs.scientific)
          (hsPkgs.JuicyPixels)
          (hsPkgs.containers)
          (hsPkgs.Rasterific)
          (hsPkgs.FontyFruity)
          (hsPkgs.svg-tree)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
          ];
        };
      exes = {
        "svgrender" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.rasterific-svg)
            (hsPkgs.Rasterific)
            (hsPkgs.JuicyPixels)
            (hsPkgs.filepath)
            (hsPkgs.FontyFruity)
            (hsPkgs.svg-tree)
            ];
          };
        };
      };
    }