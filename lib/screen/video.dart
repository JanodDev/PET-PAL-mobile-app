import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

// Example video list
final List<Video> videos = [
  Video(
    id: '1',
    title: '7 Tips for Training Your Dog',
    thumbnailUrl: 'https://youtu.be/FG9xSgN86BM',
    videoUrl: 'https://youtu.be/FG9xSgN86BM',
  ),
  Video(
    id: '2',
    title: '5 Tips for Training Your Dog',
    thumbnailUrl: 'https://example.com/thumbnails/1.jpg',
    videoUrl: 'https://youtu.be/FG9xSgN86BM',
  ),

  // Add more videos here
];

class VideoSuggestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Suggestions'),
        backgroundColor:
            Color.fromARGB(255, 202, 89, 255), // Feel free to adjust the color
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          return Card(
            child: ListTile(
              leading: CachedNetworkImage(
                imageUrl: video.thumbnailUrl,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.play_arrow),
                width: 100,
                height: 56,
                fit: BoxFit.cover,
              ),
              title: Text(video.title),
              onTap: () {
                // Here, implement your logic to play the video
                // For example, navigate to a video player page
              },
            ),
          );
        },
      ),
    );
  }
}

class Video {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String videoUrl;

  Video({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.videoUrl,
  });
}
