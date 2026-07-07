// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jamendo_api_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(jamendoApiClient)
final jamendoApiClientProvider = JamendoApiClientProvider._();

final class JamendoApiClientProvider
    extends
        $FunctionalProvider<
          JamendoApiClient,
          JamendoApiClient,
          JamendoApiClient
        >
    with $Provider<JamendoApiClient> {
  JamendoApiClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'jamendoApiClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$jamendoApiClientHash();

  @$internal
  @override
  $ProviderElement<JamendoApiClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  JamendoApiClient create(Ref ref) {
    return jamendoApiClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(JamendoApiClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<JamendoApiClient>(value),
    );
  }
}

String _$jamendoApiClientHash() => r'7cef99e41a4f75f06b65e0bf6e351c24552101c2';
