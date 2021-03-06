{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-platform"; version = "1.2.10"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Meta package for Yesod";
      description = "Instead of allowing version ranges of dependencies, this package requires specific versions to avoid dependency hell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.SHA)
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.asn1-encoding)
          (hsPkgs.asn1-parse)
          (hsPkgs.asn1-types)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.authenticate)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-builder-conduit)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.byteable)
          (hsPkgs.byteorder)
          (hsPkgs.case-insensitive)
          (hsPkgs.cereal)
          (hsPkgs.cipher-aes)
          (hsPkgs.cipher-rc4)
          (hsPkgs.clientsession)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.connection)
          (hsPkgs.cookie)
          (hsPkgs.cprng-aes)
          (hsPkgs.crypto-api)
          (hsPkgs.crypto-cipher-types)
          (hsPkgs.crypto-numbers)
          (hsPkgs.crypto-pubkey)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.crypto-random)
          (hsPkgs.cryptohash)
          (hsPkgs.cryptohash-conduit)
          (hsPkgs.css-text)
          (hsPkgs.data-default)
          (hsPkgs.data-default-class)
          (hsPkgs.data-default-instances-base)
          (hsPkgs.data-default-instances-containers)
          (hsPkgs.data-default-instances-dlist)
          (hsPkgs.data-default-instances-old-locale)
          (hsPkgs.dlist)
          (hsPkgs.email-validate)
          (hsPkgs.entropy)
          (hsPkgs.esqueleto)
          (hsPkgs.exceptions)
          (hsPkgs.fast-logger)
          (hsPkgs.file-embed)
          (hsPkgs.hamlet)
          (hsPkgs.hjsmin)
          (hsPkgs.hspec)
          (hsPkgs.hspec-expectations)
          (hsPkgs.html-conduit)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.http-date)
          (hsPkgs.http-reverse-proxy)
          (hsPkgs.http-types)
          (hsPkgs.language-javascript)
          (hsPkgs.lifted-base)
          (hsPkgs.mime-mail)
          (hsPkgs.mime-types)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.monad-loops)
          (hsPkgs.network-conduit)
          (hsPkgs.optparse-applicative)
          (hsPkgs.path-pieces)
          (hsPkgs.pem)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.primitive)
          (hsPkgs.publicsuffixlist)
          (hsPkgs.pwstore-fast)
          (hsPkgs.quickcheck-io)
          (hsPkgs.resource-pool)
          (hsPkgs.resourcet)
          (hsPkgs.safe)
          (hsPkgs.scientific)
          (hsPkgs.securemem)
          (hsPkgs.semigroups)
          (hsPkgs.setenv)
          (hsPkgs.shakespeare)
          (hsPkgs.shakespeare-css)
          (hsPkgs.shakespeare-i18n)
          (hsPkgs.shakespeare-js)
          (hsPkgs.shakespeare-text)
          (hsPkgs.silently)
          (hsPkgs.simple-sendfile)
          (hsPkgs.skein)
          (hsPkgs.socks)
          (hsPkgs.stm-chans)
          (hsPkgs.streaming-commons)
          (hsPkgs.stringsearch)
          (hsPkgs.system-fileio)
          (hsPkgs.system-filepath)
          (hsPkgs.tagged)
          (hsPkgs.tagsoup)
          (hsPkgs.tagstream-conduit)
          (hsPkgs.tf-random)
          (hsPkgs.tls)
          (hsPkgs.transformers-base)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.void)
          (hsPkgs.wai)
          (hsPkgs.wai-app-static)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-logger)
          (hsPkgs.wai-test)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
          (hsPkgs.word8)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          (hsPkgs.x509-system)
          (hsPkgs.x509-validation)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.xss-sanitize)
          (hsPkgs.yaml)
          (hsPkgs.yesod)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-auth-hashdb)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
          (hsPkgs.yesod-persistent)
          (hsPkgs.yesod-routes)
          (hsPkgs.yesod-static)
          (hsPkgs.yesod-test)
          (hsPkgs.zlib-conduit)
          ];
        };
      };
    }