# docker-wordcloud\_cli

This is a docker image that executes [amueller/word\_cloud](https://github.com/amueller/word_cloud)'s `wordcloud_cli` command.

[amuller/word\_cloud](https://github.com/amueller/word_cloud) is a word cloud generator that generates cool word cloud image. it needs Python runtime and `matplotlib`. For a little labor-saving, I create this docker image.

## Install

Run below.

```bash
$ docker pull succi0303/docker-wordcloud_cli
```

## Usage

Here is basic form.

```bash
$ docker run --rm -v $(pwd):/usr/src succi0303/docker-wordcloud_cli \
    --text src.txt --imagefile dst.png \
    --width <width px> --height <height px> \
    --background <background color> --color <text color>
```

- `--text` : file of words
- `--imagefile` : output file path (PNG image)
- `--width` : output image width (pixel)
- `--hight` : output image height (pixel)
- `--background` : background color (accepts any value from PIL.ImageColor.getcolor)
- `--color` : text color (same as `--background`)

If you ommit `--color`, you get colorful text.

To get more information, use `--help`.

```
$ docker run --rm succi0303/docker-wordcloud_cli --help
```

Or read [WordCloud for Python documentation](http://amueller.github.io/word_cloud/).
