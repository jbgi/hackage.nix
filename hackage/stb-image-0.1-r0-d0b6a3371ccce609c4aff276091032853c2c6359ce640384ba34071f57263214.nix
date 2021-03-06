{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "stb-image"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bkomuves@gmail.com";
      author = "Balazs Komuves";
      homepage = "";
      url = "";
      synopsis = "A wrapper around Sean Barrett's JPEG/PNG decoder";
      description = "Partial implementation of JPEG, PNG, TGA, BMP, PSD decoders,\nwith a really simple API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [ (hsPkgs.base) (hsPkgs.bytestring) ]
          else [ (hsPkgs.base) ];
        };
      };
    }