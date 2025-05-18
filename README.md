# GCDOM TV Player

A simple web-based TV player that can display images and videos in a playlist format. This project is hosted on GitHub Pages at [https://cyrusliew.github.io/gcdomtv/](https://cyrusliew.github.io/gcdomtv/).

## Features

- Supports both image and video playback
- Automatic playlist cycling
- Multiple TV channel support
- Responsive design that works on all screen sizes
- GitHub Pages hosting

## Setup

1. Clone this repository
2. Create a directory for each TV channel (e.g., `tv1`, `tv2`)
3. In each TV channel directory, create a `playlist.json` file
4. Add your media files to the repository
5. Deploy to GitHub Pages

## Playlist Format

Create a `playlist.json` file in your TV channel directory with the following format:

```json
[
  {
    "type": "image",
    "url": "/media/image1.jpg",
    "duration": 5
  },
  {
    "type": "video",
    "url": "/media/video1.mp4"
  }
]
```

### Playlist Item Properties

- `type`: Either "image" or "video"
- `url`: Path to the media file (relative to the repository root)
- `duration`: (For images only) Display duration in seconds

## Usage

Access the TV player with different channels using the `tv` query parameter:

- Default channel: [https://cyrusliew.github.io/gcdomtv/](https://cyrusliew.github.io/gcdomtv/)
- Specific channel: [https://cyrusliew.github.io/gcdomtv/?tv=tv1](https://cyrusliew.github.io/gcdomtv/?tv=tv1)

## File Structure

```
gcdomtv/
├── index.html
├── README.md
├── tv1/
│   └── playlist.json
├── tv2/
│   └── playlist.json
└── media/
    ├── image1.jpg
    ├── video1.mp4
    └── ...
```

## Notes

- All media URLs in the playlist will be automatically converted to absolute URLs
- Images will be displayed for their specified duration
- Videos will play until completion before moving to the next item
- The playlist will loop continuously

## License

This project is open source and available under the MIT License.