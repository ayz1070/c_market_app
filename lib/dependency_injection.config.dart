// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:c_market_app/data/data_source/data_source_module.dart' as _i9;
import 'package:c_market_app/data/data_source/local_storage/display.dao.dart'
    as _i5;
import 'package:c_market_app/data/data_source/remote/display.api.dart' as _i4;
import 'package:c_market_app/domain/usecase/base/display/display.usecase.dart'
    as _i7;
import 'package:c_market_app/presentation/main/bloc/cart_bloc/cart_bloc.dart'
    as _i3;
import 'package:c_market_app/presentation/main/bloc/payment_bloc/payment_bloc.dart'
    as _i8;
import 'package:c_market_app/presentation/pages/home/bloc/menu_bloc/menu_bloc.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataSourceModule = _$DataSourceModule();
    gh.factory<_i3.CartBloc>(() => _i3.CartBloc());
    gh.singleton<_i4.DisplayApi>(() => dataSourceModule.displayApi);
    gh.singleton<_i5.DisplayDao>(() => dataSourceModule.displayDao);
    gh.factory<_i6.MenuBloc>(() => _i6.MenuBloc(gh<_i7.DisplayUsecase>()));
    gh.factory<_i8.PaymentBloc>(() => _i8.PaymentBloc());
    return this;
  }
}

class _$DataSourceModule extends _i9.DataSourceModule {}
