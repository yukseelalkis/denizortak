// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/01n.png
  AssetGenImage get a01n => const AssetGenImage('assets/images/01n.png');

  /// File path: assets/images/02d.png
  AssetGenImage get a02d => const AssetGenImage('assets/images/02d.png');

  /// File path: assets/images/02n.png
  AssetGenImage get a02n => const AssetGenImage('assets/images/02n.png');

  /// File path: assets/images/03d.png
  AssetGenImage get a03d => const AssetGenImage('assets/images/03d.png');

  /// File path: assets/images/04d.png
  AssetGenImage get a04d => const AssetGenImage('assets/images/04d.png');

  /// File path: assets/images/09d.png
  AssetGenImage get a09d => const AssetGenImage('assets/images/09d.png');

  /// File path: assets/images/10d.png
  AssetGenImage get a10d => const AssetGenImage('assets/images/10d.png');

  /// File path: assets/images/11d.png
  AssetGenImage get a11d => const AssetGenImage('assets/images/11d.png');

  /// File path: assets/images/13d.png
  AssetGenImage get a13d => const AssetGenImage('assets/images/13d.png');

  /// File path: assets/images/50d.png
  AssetGenImage get a50d => const AssetGenImage('assets/images/50d.png');

  /// File path: assets/images/sunny.png
  AssetGenImage get sunny => const AssetGenImage('assets/images/sunny.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    a01n,
    a02d,
    a02n,
    a03d,
    a04d,
    a09d,
    a10d,
    a11d,
    a13d,
    a50d,
    sunny,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
