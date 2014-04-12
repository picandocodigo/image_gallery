# Images Gallery Creator

This project creates a web gallery from a directory with images. By
default you should move any images and images folders into
`public/images`.

When you start the server it will crawl the directory and create a
different gallery per folder. A dynamic menu is created for you to
browse your galleries.

Once you have copied/moved your images to `public/images`, go to the
project's directory in your console and run:

```bash
$ bundle install
$ bundle exec puma
```

You can now access your web gallery on [localhost:9292](http://localhost:9292)

Created to use with: https://github.com/picandocodigo/images_downloader
