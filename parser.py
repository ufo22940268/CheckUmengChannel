import os
import re

def parseChannel():
    if os.system("apktool d -f a.apk") != 0:
        print "error";
        return "";

    for line in open("a/AndroidManifest.xml").readlines():
        m = re.match(r".*UMENG_CHANNEL\"\sandroid:value=\"(\w+)\".*", line);
        if m != None:
            return m.group(1);


if __name__ == '__main__':
    print parseChannel()
