// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:c_market_app/data/data_source/data_source_module.dart' as _i19;
import 'package:c_market_app/data/data_source/local_storage/display.dao.dart'
    as _i5;
import 'package:c_market_app/data/data_source/notification_data_source.dart'
    as _i11;
import 'package:c_market_app/data/data_source/remote/display.api.dart' as _i4;
import 'package:c_market_app/data/repository_impl/display.repository_impl.dart'
    as _i7;
import 'package:c_market_app/data/repository_impl/notification_repository_impl.dart'
    as _i13;
import 'package:c_market_app/domain/repository/display.repository.dart' as _i6;
import 'package:c_market_app/domain/repository/notification_repository.dart'
    as _i12;
import 'package:c_market_app/domain/usecase/display/display.usecase.dart'
    as _i8;
import 'package:c_market_app/domain/usecase/display/notifications/fetch_notifications.dart'
    as _i17;
import 'package:c_market_app/firebase_module.dart' as _i20;
import 'package:c_market_app/presentation/main/bloc/cart_bloc/cart_bloc.dart'
    as _i3;
import 'package:c_market_app/presentation/main/bloc/payment_bloc/payment_bloc.dart'
    as _i14;
import 'package:c_market_app/presentation/pages/cart/bloc/cart_list_bloc/cart_list_bloc.dart'
    as _i16;
import 'package:c_market_app/presentation/pages/home/bloc/menu_bloc/menu_bloc.dart'
    as _i10;
import 'package:c_market_app/presentation/pages/home/bloc/view_module_bloc/view_module_bloc.dart'
    as _i15;
import 'package:c_market_app/presentation/pages/notification/bloc/notification_bloc.dart'
    as _i18;
import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
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
    final firebaseModule = _$FirebaseModule();
    gh.factory<_i3.CartBloc>(() => _i3.CartBloc());
    gh.singleton<_i4.DisplayApi>(() => dataSourceModule.displayApi);
    gh.singleton<_i5.DisplayDao>(() => dataSourceModule.displayDao);
    gh.singleton<_i6.DisplayRepository>(() => _i7.DisplayRepositoryImpl(
          gh<_i4.DisplayApi>(),
          gh<_i5.DisplayDao>(),
        ));
    gh.singleton<_i8.DisplayUsecase>(
        () => _i8.DisplayUsecase(gh<_i6.DisplayRepository>()));
    gh.lazySingleton<_i9.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.factory<_i10.MenuBloc>(() => _i10.MenuBloc(gh<_i8.DisplayUsecase>()));
    gh.lazySingleton<_i11.NotificationDataSource>(
        () => _i11.NotificationDataSource(gh<_i9.FirebaseFirestore>()));
    gh.lazySingleton<_i12.NotificationRepository>(() =>
        _i13.NotificationRepositoryImpl(gh<_i11.NotificationDataSource>()));
    gh.factory<_i14.PaymentBloc>(() => _i14.PaymentBloc());
    gh.factory<_i15.ViewModuleBloc>(
        () => _i15.ViewModuleBloc(gh<_i8.DisplayUsecase>()));
    gh.factory<_i16.CartListBloc>(
        () => _i16.CartListBloc(gh<_i8.DisplayUsecase>()));
    gh.lazySingleton<_i17.FetchNotifications>(
        () => _i17.FetchNotifications(gh<_i12.NotificationRepository>()));
    gh.factory<_i18.NotificationBloc>(
        () => _i18.NotificationBloc(gh<_i17.FetchNotifications>()));
    return this;
  }
}

class _$DataSourceModule extends _i19.DataSourceModule {}

class _$FirebaseModule extends _i20.FirebaseModule {}
