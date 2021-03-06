{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; blaze_html_0_5 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-core"; version = "1.0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Creation of type-safe, RESTful web applications.";
      description = "Yesod is a framework designed to foster creation of RESTful web application that have strong compile-time guarantees of correctness. It also affords space efficient code and portability to many deployment backends, from CGI to stand-alone serving.\n\nThe Yesod documentation site <http://www.yesodweb.com/> has much more information, tutorials and information on some of the supporting packages, like Hamlet and Persistent.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.yesod-routes)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.path-pieces)
          (hsPkgs.hamlet)
          (hsPkgs.shakespeare)
          (hsPkgs.shakespeare-js)
          (hsPkgs.shakespeare-css)
          (hsPkgs.shakespeare-i18n)
          (hsPkgs.blaze-builder)
          (hsPkgs.transformers)
          (hsPkgs.clientsession)
          (hsPkgs.random)
          (hsPkgs.cereal)
          (hsPkgs.old-locale)
          (hsPkgs.failure)
          (hsPkgs.containers)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.cookie)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
          (hsPkgs.parsec)
          (hsPkgs.directory)
          (hsPkgs.vector)
          (hsPkgs.aeson)
          (hsPkgs.fast-logger)
          (hsPkgs.wai-logger)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.lifted-base)
          ] ++ (pkgs.lib).optional (flags.test) (hsPkgs.wai-test)) ++ (if flags.blaze_html_0_5
          then [ (hsPkgs.blaze-html) (hsPkgs.blaze-markup) ]
          else [ (hsPkgs.blaze-html) ]);
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.wai-test)
            (hsPkgs.wai)
            (hsPkgs.yesod-core)
            (hsPkgs.bytestring)
            (hsPkgs.hamlet)
            (hsPkgs.shakespeare-css)
            (hsPkgs.shakespeare-js)
            (hsPkgs.text)
            (hsPkgs.http-types)
            (hsPkgs.random)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }