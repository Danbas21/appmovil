// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_students.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$vigenciaHash() => r'ae409052c641eaa8d8517bb32f5de530b369f531';

/// See also [vigencia].
@ProviderFor(vigencia)
final vigenciaProvider = AutoDisposeProvider<String>.internal(
  vigencia,
  name: r'vigenciaProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$vigenciaHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef VigenciaRef = AutoDisposeProviderRef<String>;
String _$studentProviderHash() => r'497270de2e84bfacf332fdd5d896b5c310c0c9c3';

/// See also [StudentProvider].
@ProviderFor(StudentProvider)
final studentProviderProvider = AutoDisposeAsyncNotifierProvider<
    StudentProvider, DocumentSnapshot<Map<String, dynamic>>>.internal(
  StudentProvider.new,
  name: r'studentProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$studentProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$StudentProvider
    = AutoDisposeAsyncNotifier<DocumentSnapshot<Map<String, dynamic>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
