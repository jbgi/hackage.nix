{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "rbr"; version = "0.8.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/";
      url = "";
      synopsis = "Mask nucleotide (EST) sequences in Fasta format";
      description = "RBR is a tool for masking EST sequences. It uses a\nstatistical model to identify suspicious sequence parts,\nand masks them. The README has more details.\n\nThe Darcs repository is at <http://malde.org/~ketil/rbr>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.bio) ];
        };
      exes = {
        "rbr" = { depends = [ (hsPkgs.bytestring) ]; };
        "mct" = { depends = [ (hsPkgs.bytestring) ]; };
        };
      };
    }