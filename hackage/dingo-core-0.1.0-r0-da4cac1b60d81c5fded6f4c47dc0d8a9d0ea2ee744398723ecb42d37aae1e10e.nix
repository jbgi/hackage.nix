{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0.1";
      identifier = { name = "dingo-core"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Dingo is a Rich Internet Application platform based on the Warp web server.";
      description = "Dingo is a Rich Internet Application platform based on the Warp web server. It allows you to write code which looks very much like regular GUI code and have it work in the browser.\nThis package contains the core modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-textual)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.cookie)
          (hsPkgs.deepseq)
          (hsPkgs.file-embed)
          (hsPkgs.fclabels)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.random)
          (hsPkgs.SHA)
          (hsPkgs.shakespeare-js)
          (hsPkgs.strict-concurrency)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
          (hsPkgs.wai-eventsource)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
          (hsPkgs.web-css)
          ];
        };
      };
    }