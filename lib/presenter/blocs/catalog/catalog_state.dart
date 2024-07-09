part of 'catalog_bloc.dart';

final class CatalogPageState  {
  final CatalogMenu? catalogData;
  final Status status;
  final String? errorMessage;

  CatalogPageState({ this.catalogData, required this.status,  this.errorMessage});

  CatalogPageState copyWith(
      final CatalogMenu? catalogData,
      final Status? status,
      final String? errorMessage,
      ) =>
      CatalogPageState(
          status: this.status,
          catalogData: catalogData ?? this.catalogData,
          errorMessage: errorMessage ?? this.errorMessage
      );
}