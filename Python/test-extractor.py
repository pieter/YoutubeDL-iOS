import pytest
import json

def callback(context, str):
    data = json.loads(str)
    print data

pytest.load_playlist("https://www.youtube.com/playlist?list=PLBsP89CPrMeMKjHnLfO3WAhiOOxiv5Xqo", callback)