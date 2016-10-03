from __future__ import unicode_literals
import youtube_dl
from youtube_dl.extractor import youtube
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

def download(url, output_file, progress_cb):
    def progress_hook(event):
        progress_cb(json.dumps(event, sort_keys=True, indent=4))

    try:
        print "Going to download %s to %s" % (url, output_file)
        ytb = youtube_dl.YoutubeDL({
                               "nocheckcertificate": True,
                               "progress_hooks": [progress_hook],
                               "restrictfilenames": True,
                               "nooverwrites": True,
                               "format": "best[ext=mp4]",
                               "outtmpl": unicode(output_file)
                               })

        ytb.download([unicode(url)])
    except Exception:
        print "Error downloading file:"
        print(traceback.format_exc())
        raise

def load_playlist(url, update_cb, context=None):
    try:
        print 
        ytb = youtube_dl.YoutubeDL({"nocheckcertificate": True})
        extractor = youtube.YoutubePlaylistIE()
        extractor.set_downloader(ytb)
        data = extractor.extract(url)
        entries = data.pop("entries")

        update_cb(context, json.dumps({
            'type': 'initial',
            'data': data
        }))
    
        for entry in entries:
            update_cb(context, json.dumps({
                "type": "entry",
                "data": entry
            }))
    except Exception:
        print "Error Loading Playlist:"
        print(traceback.format_exc())
        raise
    