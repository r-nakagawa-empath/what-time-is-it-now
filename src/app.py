# -*- coding: utf-8 -*-
# app.py

import responder
import datetime

api = responder.API()

@api.route("/now")
async def now(req, resp):
    dt_now = datetime.datetime.now()
    resp.text= dt_now.isoformat()

if __name__ == '__main__':
    api.run()

