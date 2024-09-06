// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_picker_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$downHash() => r'b123c5060e9adfcdf6f2971e4d33a4a7ba0a6d52';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [down].
@ProviderFor(down)
const downProvider = DownFamily();

/// See also [down].
class DownFamily extends Family<AsyncValue<Uint8List?>> {
  /// See also [down].
  const DownFamily();

  /// See also [down].
  DownProvider call(
    String imageUrl,
  ) {
    return DownProvider(
      imageUrl,
    );
  }

  @override
  DownProvider getProviderOverride(
    covariant DownProvider provider,
  ) {
    return call(
      provider.imageUrl,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'downProvider';
}

/// See also [down].
class DownProvider extends AutoDisposeFutureProvider<Uint8List?> {
  /// See also [down].
  DownProvider(
    String imageUrl,
  ) : this._internal(
          (ref) => down(
            ref as DownRef,
            imageUrl,
          ),
          from: downProvider,
          name: r'downProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$downHash,
          dependencies: DownFamily._dependencies,
          allTransitiveDependencies: DownFamily._allTransitiveDependencies,
          imageUrl: imageUrl,
        );

  DownProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageUrl,
  }) : super.internal();

  final String imageUrl;

  @override
  Override overrideWith(
    FutureOr<Uint8List?> Function(DownRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DownProvider._internal(
        (ref) => create(ref as DownRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageUrl: imageUrl,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Uint8List?> createElement() {
    return _DownProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DownProvider && other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DownRef on AutoDisposeFutureProviderRef<Uint8List?> {
  /// The parameter `imageUrl` of this provider.
  String get imageUrl;
}

class _DownProviderElement extends AutoDisposeFutureProviderElement<Uint8List?>
    with DownRef {
  _DownProviderElement(super.provider);

  @override
  String get imageUrl => (origin as DownProvider).imageUrl;
}

String _$chargePhotoHash() => r'5beb970fac04446f66f75de91e2f0dbea1204645';

/// See also [ChargePhoto].
@ProviderFor(ChargePhoto)
final chargePhotoProvider =
    AutoDisposeAsyncNotifierProvider<ChargePhoto, String>.internal(
  ChargePhoto.new,
  name: r'chargePhotoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$chargePhotoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ChargePhoto = AutoDisposeAsyncNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
