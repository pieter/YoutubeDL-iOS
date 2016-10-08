YoutubeDL-iOS is a wrapper around [youtube-dl](https://rg3.github.io/youtube-dl/) and allows you to download YouTube movies to your iOS device. Because it uses youtube-dl, it'll always try to get the best quality, and should work with most youtube movies.

## How do I use this?

This isn't distributed through the App Store, and is unlikely to get approved by Apple. So, you'll have to build it yourself and put it on your own iOS device. It should support both iPhones and iPads.

Once you have it running, press the '+' and paste in the URL of a YouTube playlist. You should then be able to download all the movies in that playlist. It doesn't support individual movies, or YouTube users yet.

## How does this differ from existing projects that do the same?

Mainly because it uses youtube-dl.

## This code is ugly!

Yup, it's the first time I touched Cocoa stuff since 2009 or so. Never used Swift before, and only spent a few hours on this.

## Why did you check in a copy of Python? It's huge!

Yeah, would be great to fix this. It uses [Python-Apple-support](https://github.com/pybee/Python-Apple-support), so we can possibly download a copy from github instead. I wanted to make it relatively easy to get started with this.

## Why don't you use the official YouTube API?

The official API requires an API key, and I'm a bit hesitant to use that with a project like this.

## I'd like to have feature X, Y, ...

Great, I'm open to all contributions!