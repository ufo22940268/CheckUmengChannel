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

logger = logging.getLogger("test");
class MainHandler(tornado.web.RequestHandler):
    def get(self):
	loader = Loader("./");
	self.write(loader.load("index.html").generate());

class UploadHandler(tornado.web.RequestHandler):
    def post(self):
        file1 = self.request.files['files[]'][0];
        util.log(file1['filename']);
        outfile = open("a.apk", "w");
        outfile.write(file1['body']);
        outfile.close();

        try: 
            jo = json.dumps(dict(channel=parser.parseChannel(), state=0));
            js = str(jo);
            self.write(js);
        except:
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
    application.listen(8885)
    tornado.ioloop.IOLoop.instance().start()
