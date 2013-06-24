#coding:utf-8
import tornado.web
import tornado.ioloop
from tornado.template import Template
from tornado.template import Loader
import logging
import util
import parser
import json
import re
import urllib
import traceback

logger = logging.getLogger("test");
class MainHandler(tornado.web.RequestHandler):
    def get(self):
	loader = Loader("./");
	self.write(loader.load("index.html").generate());

class UploadHandler(tornado.web.RequestHandler):
    def post(self):
        util.log(self.get_argument("id", default="0"));
        file1 = self.request.files['files[]'][0];
        util.log(file1['filename']);
        outfile = open("a.apk", "w");
        outfile.write(file1['body']);
        outfile.close();

        channel = None;
        try: 
            channel = parser.parseChannel();
        except:
            traceback.print_exc();

        if channel:
            jo = json.dumps(dict(channel=channel, state=0));
            self.write(str(jo));
        else:
            jo = json.dumps(dict(state=-1));
            self.write(str(jo));

application = tornado.web.Application([
    (r"/", MainHandler),
    (r"/css/(.*)", tornado.web.StaticFileHandler, {"path": "./css/"}),
    (r"/js/(.*)", tornado.web.StaticFileHandler, {"path": "./js/"}),
    (r"/js/vendor/(.*)", tornado.web.StaticFileHandler, {"path": "./js/"}),
    (r"/img/(.*)", tornado.web.StaticFileHandler, {"path": "./img/"}),
    (r"/server/(.*)", tornado.web.StaticFileHandler, {"path": "./server/"}),
    (r"/cors/(.*)", tornado.web.StaticFileHandler, {"path": "./cors/"}),
    (r"/upload", UploadHandler),
    ]);

if __name__ == "__main__":
    application.listen(8880)
    tornado.ioloop.IOLoop.instance().start()
