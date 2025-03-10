// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:fuksiarz/src/data/data_sources/events_data_sources.dart'
    as _i503;
import 'package:fuksiarz/src/data/network/api_client.dart' as _i133;
import 'package:fuksiarz/src/data/repositories_implementations/events_repository.dart'
    as _i97;
import 'package:fuksiarz/src/domain/repositories/i_events_repository.dart'
    as _i3;
import 'package:fuksiarz/src/presentation/home/categories_selector/category_selector_cubit.dart'
    as _i104;
import 'package:fuksiarz/src/presentation/home/events/events_cubit.dart'
    as _i868;
import 'package:fuksiarz/src/presentation/search_screen/search_events_cubit/search_events_cubit.dart'
    as _i946;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i104.CategorySelectorCubit>(
        () => _i104.CategorySelectorCubit());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i133.ApiClient>(() => registerModule.apiClient);
    gh.lazySingleton<_i503.IEventsDataSource>(
        () => _i503.EventsDataSource(gh<_i133.ApiClient>()));
    gh.singleton<_i3.IEventsRepository>(
        () => _i97.EventsRepository(gh<_i503.IEventsDataSource>()));
    gh.factory<_i868.EventsCubit>(
        () => _i868.EventsCubit(gh<_i3.IEventsRepository>()));
    gh.factory<_i946.SearchEventsCubit>(
        () => _i946.SearchEventsCubit(gh<_i3.IEventsRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i133.RegisterModule {}
