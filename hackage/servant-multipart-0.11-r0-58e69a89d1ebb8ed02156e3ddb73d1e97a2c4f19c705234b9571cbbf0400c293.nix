{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-multipart"; version = "0.11"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Alp Mestanogullari";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "https://github.com/haskell-servant/servant-multipart#readme";
      url = "";
      synopsis = "multipart/form-data (e.g file upload) support for servant";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.http-media)
          (hsPkgs.lens)
          (hsPkgs.resourcet)
          (hsPkgs.servant)
          (hsPkgs.servant-docs)
          (hsPkgs.servant-server)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          ];
        };
      exes = {
        "upload" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.http-client)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.servant)
            (hsPkgs.servant-multipart)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.warp)
            (hsPkgs.wai)
            ];
          };
        };
      };
    }