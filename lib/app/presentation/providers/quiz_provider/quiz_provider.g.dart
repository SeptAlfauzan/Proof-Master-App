// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$quizRepositoryHash() => r'a724972f60b4bdba6ae09ad421fc57d9ffc3acec';

/// See also [quizRepository].
@ProviderFor(quizRepository)
final quizRepositoryProvider = AutoDisposeProvider<QuizRepository>.internal(
  quizRepository,
  name: r'quizRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$quizRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef QuizRepositoryRef = AutoDisposeProviderRef<QuizRepository>;
String _$getQuizQuestionsFromHash() =>
    r'2c27213e2b2a4e185685973eb3dc3e0ce35da500';

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

/// See also [getQuizQuestionsFrom].
@ProviderFor(getQuizQuestionsFrom)
const getQuizQuestionsFromProvider = GetQuizQuestionsFromFamily();

/// See also [getQuizQuestionsFrom].
class GetQuizQuestionsFromFamily
    extends Family<AsyncValue<List<QuizQuestion>>> {
  /// See also [getQuizQuestionsFrom].
  const GetQuizQuestionsFromFamily();

  /// See also [getQuizQuestionsFrom].
  GetQuizQuestionsFromProvider call(
    String id,
  ) {
    return GetQuizQuestionsFromProvider(
      id,
    );
  }

  @override
  GetQuizQuestionsFromProvider getProviderOverride(
    covariant GetQuizQuestionsFromProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getQuizQuestionsFromProvider';
}

/// See also [getQuizQuestionsFrom].
class GetQuizQuestionsFromProvider
    extends AutoDisposeFutureProvider<List<QuizQuestion>> {
  /// See also [getQuizQuestionsFrom].
  GetQuizQuestionsFromProvider(
    String id,
  ) : this._internal(
          (ref) => getQuizQuestionsFrom(
            ref as GetQuizQuestionsFromRef,
            id,
          ),
          from: getQuizQuestionsFromProvider,
          name: r'getQuizQuestionsFromProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getQuizQuestionsFromHash,
          dependencies: GetQuizQuestionsFromFamily._dependencies,
          allTransitiveDependencies:
              GetQuizQuestionsFromFamily._allTransitiveDependencies,
          id: id,
        );

  GetQuizQuestionsFromProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<List<QuizQuestion>> Function(GetQuizQuestionsFromRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetQuizQuestionsFromProvider._internal(
        (ref) => create(ref as GetQuizQuestionsFromRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<QuizQuestion>> createElement() {
    return _GetQuizQuestionsFromProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetQuizQuestionsFromProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetQuizQuestionsFromRef
    on AutoDisposeFutureProviderRef<List<QuizQuestion>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetQuizQuestionsFromProviderElement
    extends AutoDisposeFutureProviderElement<List<QuizQuestion>>
    with GetQuizQuestionsFromRef {
  _GetQuizQuestionsFromProviderElement(super.provider);

  @override
  String get id => (origin as GetQuizQuestionsFromProvider).id;
}

String _$quizHash() => r'c1ecf83bc1a85a577a2f3ab67ba344260c79a23e';

/// See also [Quiz].
@ProviderFor(Quiz)
final quizProvider = AutoDisposeNotifierProvider<Quiz, QuizState>.internal(
  Quiz.new,
  name: r'quizProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$quizHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Quiz = AutoDisposeNotifier<QuizState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
