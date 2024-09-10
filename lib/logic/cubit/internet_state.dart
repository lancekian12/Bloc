part of 'internet_cubit.dart';

enum ConnectionType { Wifi, Mobile }

@immutable
sealed class InternetState {}

final class InternetInitial extends InternetState {}
