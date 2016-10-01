import youtube_dl

ytb = youtube_dl.YoutubeDL({})
ytb.extract_info("https://www.youtube.com/playlist?list=PLBsP89CPrMeMKjHnLfO3WAhiOOxiv5Xqo", download=False)