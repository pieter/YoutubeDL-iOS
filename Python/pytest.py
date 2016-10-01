from __future__ import unicode_literals
import youtube_dl
import json
import traceback

def get_info(url):
    try:
        ytb = youtube_dl.YoutubeDL({
            "nocheckcertificate": True
        })
        info = ytb.extract_info(url, download=False)
        return json.dumps(info, sort_keys=True, indent=4)
    except Exception:
        print "Error extracting info:"
        print(traceback.format_exc())
        raise

def download(url, progress_cb):
    def progress_hook(event):
        print("Progress hook called!")
        progress_cb(json.dumps(event, sort_keys=True, indent=4))

    print "Going to download %s!", url
    ytb = youtube_dl.YoutubeDL({
        "nocheckcertificate": True,
        "progress_hooks": [progress_hook],
        "restrictfilenames": True,
        "nooverwrites": True,
        "outtmpl": "/tmp/video/%(id)s.%(ext)s"
    })

    try:
        ytb.download([url])
    except Exception:
        print "Error downloading file:"
        print(traceback.format_exc())
        raise
