part of 'home_cubit.dart';

class HomeState extends Equatable {
  HomeState({
    this.iconkalar,
    this.buutubu = false,
    this.index = 0,
  });
  List<Icon>? iconkalar;
  bool buutubu;
  int index;

  @override
  List<Object?> get props => [iconkalar, buutubu, index];
  HomeState copyWith({List<Icon>? iconkalar, bool? buutubu, int? index}) {
    return HomeState(
      iconkalar: iconkalar ?? this.iconkalar,
      buutubu: buutubu ?? this.buutubu,
      index: index ?? this.index,
    );
  }
}
