{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "growler"; version = "0.6.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "http://github.com/iand675/growler";
      url = "";
      synopsis = "A revised version of the scotty library that attempts to be simpler and more performant.";
      description = "Growler provides a very similar interface to scotty, with slight tweaks for performance and a few feature tradeoffs. Growler provides the ability to abort actions (handlers) with arbitrary responses, not just in the event of redirects or raising errors. Growler avoids coercing everything into lazy Text values and reading the whole request body into memory. It also eliminates the ability to abort the handler and have another handler handle the request instead (Scotty's 'next' function).\n\nAPI is still in flux, so use at your own risk. Pull requests / issues are welcome.\n\n@\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n\nimport Web.Growler\nimport Data.Monoid ((&#60;&#62;))\n\nmain = growl id defaultConfig \$ do\n&#32;&#32;get &#34;/&#34; \$ text &#34;Hello, World!&#34;\n&#32;&#32;get &#34;/:name&#34; \$ do\n&#32;&#32;&#32;&#32;name <- param &#34;name&#34;\n&#32;&#32;&#32;&#32;text (&#34;Hello, &#34; &#60;&#62; name &#60;&#62; &#34;!&#34;)\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.regex-compat)
          (hsPkgs.blaze-builder)
          (hsPkgs.unordered-containers)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.case-insensitive)
          (hsPkgs.warp)
          (hsPkgs.pipes)
          (hsPkgs.pipes-aeson)
          (hsPkgs.pipes-wai)
          (hsPkgs.monad-control)
          (hsPkgs.either)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers)
          ];
        };
      };
    }