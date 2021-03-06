{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "OpenAFP"; version = "1.3.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "https://github.com/audreyt/openafp/";
      url = "";
      synopsis = "IBM AFP document format parser and generator";
      description = "IBM AFP document format parser and generator";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.regex-compat)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          ];
        };
      };
    }