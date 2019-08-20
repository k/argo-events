module github.com/argoproj/argo-events

go 1.12

require (
	cloud.google.com/go v0.34.0
	github.com/DataDog/zstd v1.4.0
	github.com/Knetic/govaluate v0.0.0-20171022003610-9aa49832a739
	github.com/PuerkitoBio/purell v1.1.1
	github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578
	github.com/Shopify/sarama v1.22.1
	github.com/argoproj/argo v2.2.1+incompatible
	github.com/aws/aws-sdk-go v0.0.0-20190510182851-594c848f324d
	github.com/colinmarc/hdfs v0.0.0-20180802165501-48eb8d6c34a9
	github.com/davecgh/go-spew v1.1.1
	github.com/docker/spdystream v0.0.0-20181023171402-6480d4af844c
	github.com/dustin/go-humanize v1.0.0
	github.com/eapache/go-resiliency v1.1.0
	github.com/eapache/go-xerial-snappy v0.0.0-20180814174437-776d5712da21
	github.com/eapache/queue v1.1.0
	github.com/eclipse/paho.mqtt.golang v1.2.0
	github.com/elazarl/goproxy v0.0.0-20170405201442-c4fc26588b6e // indirect
	github.com/emicklei/go-restful v2.9.3+incompatible
	github.com/emirpasic/gods v1.12.0
	github.com/evanphx/json-patch v4.5.0+incompatible // indirect
	github.com/fsnotify/fsnotify v1.4.7
	github.com/ghodss/yaml v0.0.0-20190212211648-25d852aebe32
	github.com/go-openapi/jsonpointer v0.19.0
	github.com/go-openapi/jsonreference v0.19.0
	github.com/go-openapi/spec v0.19.0
	github.com/go-openapi/swag v0.19.0
	github.com/gobwas/glob v0.0.0-20181002190808-e7a84e9525fe
	github.com/gogo/protobuf v1.2.2-0.20190723190241-65acae22fc9d
	github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b
	github.com/golang/groupcache v0.0.0-20160516000752-02826c3e7903 // indirect
	github.com/golang/mock v1.2.0 // indirect
	github.com/golang/protobuf v1.2.0
	github.com/golang/snappy v0.0.1
	github.com/google/btree v1.0.0 // indirect
	github.com/google/go-cmp v0.3.1 // indirect
	github.com/google/go-github/v24 v24.0.1 // indirect
	github.com/google/go-querystring v1.0.0
	github.com/google/gofuzz v1.0.0
	github.com/google/uuid v1.1.1 // indirect
	github.com/googleapis/gax-go v1.0.2
	github.com/googleapis/gax-go/v2 v2.0.4 // indirect
	github.com/googleapis/gnostic v0.2.0
	github.com/gopherjs/gopherjs v0.0.0-20190430165422-3e4dfb77656c
	github.com/gorilla/websocket v1.4.0
	github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79 // indirect
	github.com/hashicorp/go-uuid v1.0.1
	github.com/hashicorp/golang-lru v0.5.1
	github.com/howeyc/gopass v0.0.0-20170109162249-bf9dde6d0d2c
	github.com/imdario/mergo v0.3.7
	github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99
	github.com/jcmturner/gofork v1.0.0
	github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af
	github.com/joncalhoun/qson v0.0.0-20170526102502-8a9cab3a62b1
	github.com/json-iterator/go v1.1.7
	github.com/jtolds/gls v4.20.0+incompatible
	github.com/kevinburke/ssh_config v0.0.0-20180830205328-81db2a75821e
	github.com/knative/pkg v0.0.0-20190612215543-68737b1b4e03 // indirect
	github.com/konsorten/go-windows-terminal-sequences v1.0.2
	github.com/mailru/easyjson v0.0.0-20190403194419-1ea4449da983
	github.com/mattbaird/jsonpatch v0.0.0-20171005235357-81af80346b1a // indirect
	github.com/minio/minio-go v0.0.0-20190430232750-10b3660b8f09
	github.com/mitchellh/go-homedir v1.1.0
	github.com/mitchellh/mapstructure v1.1.2
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd
	github.com/modern-go/reflect2 v1.0.1
	github.com/mxk/go-flowrate v0.0.0-20140419014527-cca7078d478f // indirect
	github.com/nats-io/go-nats v1.7.2
	github.com/nats-io/go-nats-streaming v0.4.4
	github.com/nats-io/nkeys v0.0.2
	github.com/nats-io/nuid v1.0.1
	github.com/nlopes/slack v0.0.0-20190508220637-3970c759dead
	github.com/onsi/ginkgo v1.8.0 // indirect
	github.com/onsi/gomega v1.5.0 // indirect
	github.com/pelletier/go-buffruneio v0.2.0
	github.com/peterbourgon/diskv v2.0.1+incompatible // indirect
	github.com/pierrec/lz4 v0.0.0-20190501090746-d705d4371bfc
	github.com/pkg/errors v0.8.1
	github.com/pmezard/go-difflib v1.0.0
	github.com/rcrowley/go-metrics v0.0.0-20181016184325-3113b8401b8a
	github.com/robfig/cron v1.2.0
	github.com/satori/go.uuid v1.2.0
	github.com/sergi/go-diff v1.0.0
	github.com/sirupsen/logrus v0.0.0-20190510074101-f0375eb5b588
	github.com/smartystreets/assertions v0.0.0-20190401211740-f487f9de1cd3
	github.com/smartystreets/goconvey v0.0.0-20181108003508-044398e4856c
	github.com/spf13/pflag v1.0.3
	github.com/src-d/gcfg v1.4.0
	github.com/streadway/amqp v0.0.0-20190404075320-75d898a42a94
	github.com/stretchr/objx v0.1.1
	github.com/stretchr/testify v1.3.0
	github.com/tektoncd/pipeline v0.5.2
	github.com/tidwall/gjson v1.2.1
	github.com/tidwall/match v1.0.1
	github.com/tidwall/pretty v1.0.0
	github.com/tidwall/sjson v1.0.4
	github.com/xanzy/go-gitlab v0.17.0
	github.com/xanzy/ssh-agent v0.2.1
	go.opencensus.io v0.21.0
	golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529
	golang.org/x/net v0.0.0-20190613194153-d28f0bde5980
	golang.org/x/oauth2 v0.0.0-20190402181905-9f3314589c9a
	golang.org/x/sync v0.0.0-20190423024810-112230192c58
	golang.org/x/sys v0.0.0-20190616124812-15dcb6c0061f
	golang.org/x/text v0.3.2
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4
	golang.org/x/tools v0.0.0-20190510151030-63859f3815cb
	golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7 // indirect
	google.golang.org/api v0.5.0
	google.golang.org/appengine v1.5.0
	google.golang.org/genproto v0.0.0-20190508193815-b515fa19cec8
	google.golang.org/grpc v1.20.1
	gopkg.in/inf.v0 v0.9.1
	gopkg.in/ini.v1 v1.42.0
	gopkg.in/jcmturner/aescts.v1 v1.0.1
	gopkg.in/jcmturner/dnsutils.v1 v1.0.1
	gopkg.in/jcmturner/gokrb5.v5 v5.3.0
	gopkg.in/jcmturner/rpc.v0 v0.0.2
	gopkg.in/src-d/go-billy.v4 v4.3.0
	gopkg.in/src-d/go-git.v4 v4.11.0
	gopkg.in/warnings.v0 v0.1.2
	gopkg.in/yaml.v2 v2.2.2
	honnef.co/go/tools v0.0.0-20190106161140-3f1c8253044a // indirect
	k8s.io/api v0.0.0-20190226173710-145d52631d00
	k8s.io/apimachinery v0.0.0-20190221084156-01f179d85dbc
	k8s.io/client-go v0.0.0-20190226174127-78295b709ec6
	k8s.io/code-generator v0.0.0-20190116203031-edc41f23fa91
	k8s.io/gengo v0.0.0-20190308184658-b90029ef6cd8
	k8s.io/klog v0.3.1
	k8s.io/kube-openapi v0.0.0-20190709113604-33be087ad058
	k8s.io/utils v0.0.0-20190801114015-581e00157fb1 // indirect
	knative.dev/pkg v0.0.0-20190807140856-4707aad818fe // indirect
	sigs.k8s.io/yaml v1.1.0 // indirect
)
