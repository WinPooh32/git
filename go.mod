module github.com/WinPooh32/git

go 1.24.6

// rfc5280 said: "The serial number is an integer assigned by the CA to each certificate."
// But some CAs use negative serial number, just relax the check. related:
// Default TLS cert uses negative serial number #895 https://github.com/microsoft/mssql-docker/issues/895
godebug x509negativeserial=1

require (
	gitea.com/go-chi/cache v0.2.1
	github.com/42wim/httpsig v1.2.2
	github.com/djherbis/buffer v1.2.0
	github.com/djherbis/nio/v3 v3.0.1
	github.com/dustin/go-humanize v1.0.1
	github.com/emirpasic/gods v1.18.1
	github.com/fsnotify/fsnotify v1.9.0
	github.com/go-enry/go-enry/v2 v2.9.2
	github.com/go-git/go-billy/v5 v5.6.2
	github.com/go-git/go-git/v5 v5.16.0
	github.com/gobwas/glob v0.2.3
	github.com/gogs/chardet v0.0.0-20211120154057-b7413eaefb8f
	github.com/golang-jwt/jwt/v5 v5.2.2
	github.com/google/pprof v0.0.0-20250422154841-e1f9c1950416
	github.com/hashicorp/go-version v1.7.0
	github.com/hashicorp/golang-lru/v2 v2.0.7
	github.com/json-iterator/go v1.1.12
	github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51
	github.com/klauspost/compress v1.18.0
	github.com/mattn/go-isatty v0.0.20
	github.com/msteinert/pam v1.2.0
	github.com/stretchr/testify v1.10.0
	github.com/yohcop/openid-go v1.0.1
	golang.org/x/crypto v0.37.0
	golang.org/x/net v0.39.0
	golang.org/x/sys v0.32.0
	golang.org/x/text v0.24.0
	gopkg.in/ini.v1 v1.67.0
	gopkg.in/yaml.v3 v3.0.1
)

require (
	dario.cat/mergo v1.0.1 // indirect
	github.com/Microsoft/go-winio v0.6.2 // indirect
	github.com/ProtonMail/go-crypto v1.2.0 // indirect
	github.com/bradfitz/gomemcache v0.0.0-20250403215159-8d39553ac7cf // indirect
	github.com/cloudflare/circl v1.6.1 // indirect
	github.com/cyphar/filepath-securejoin v0.4.1 // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/go-enry/go-oniguruma v1.2.1 // indirect
	github.com/go-git/gcfg v1.5.1-0.20230307220236-3a3c6141e376 // indirect
	github.com/golang/groupcache v0.0.0-20241129210726-2c02b8208cf8 // indirect
	github.com/gopherjs/gopherjs v0.0.0-20190910122728-9d188e94fb99 // indirect
	github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99 // indirect
	github.com/kevinburke/ssh_config v1.2.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/pjbgf/sha1cd v0.3.2 // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	github.com/sergi/go-diff v1.3.2-0.20230802210424-5b0b94c5c0d3 // indirect
	github.com/skeema/knownhosts v1.3.1 // indirect
	github.com/smartystreets/assertions v1.1.1 // indirect
	github.com/smartystreets/goconvey v0.0.0-20190731233626-505e41936337 // indirect
	github.com/unknwon/com v1.0.1 // indirect
	github.com/xanzy/ssh-agent v0.3.3 // indirect
	golang.org/x/exp v0.0.0-20250305212735-054e65f0b394 // indirect
	gopkg.in/warnings.v0 v0.1.2 // indirect
)

replace github.com/hashicorp/go-version => github.com/6543/go-version v1.3.1

replace github.com/shurcooL/vfsgen => github.com/lunny/vfsgen v0.0.0-20220105142115-2c99e1ffdfa0

replace github.com/nektos/act => gitea.com/gitea/act v0.261.4

// TODO: the only difference is in `PutObject`: the fork doesn't use `NewVerifyingReader(r, sha256.New(), oid, expectedSize)`, need to figure out why
replace github.com/charmbracelet/git-lfs-transfer => gitea.com/gitea/git-lfs-transfer v0.2.0

// TODO: This could be removed after https://github.com/mholt/archiver/pull/396 merged
replace github.com/mholt/archiver/v3 => github.com/anchore/archiver/v3 v3.5.2

replace git.sr.ht/~mariusor/go-xsd-duration => gitea.com/gitea/go-xsd-duration v0.0.0-20220703122237-02e73435a078

exclude github.com/gofrs/uuid v3.2.0+incompatible

exclude github.com/gofrs/uuid v4.0.0+incompatible

exclude github.com/goccy/go-json v0.4.11

exclude github.com/satori/go.uuid v1.2.0
