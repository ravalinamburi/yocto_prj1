DESCRIPTION = "Simple helloworld application"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=96af5705d6f64a88e035781ef00e98a8"
SRC_URISS = "file://hello.c"
SRC_URI = "file://hello_world1.c"

S = "${WORKDIR}"

do_compile() {
    pwd
    ${CC} ${S}/hello.c ${LDFLAGS} -o hello
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 hello ${D}${bindir}
}
