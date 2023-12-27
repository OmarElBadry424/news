abstract class NewsState {}
class InitialState extends NewsState{}

class ChangeNavBarState extends NewsState{}


class LoadingBusinessDataState extends NewsState{}
class GetBusinessDataState extends NewsState{}
class ErrorBusinessDataState extends NewsState{}

class LoadingSportDataState extends NewsState{}
class GetSportDataState extends NewsState{}
class ErrorSportDataState extends NewsState{}

class LoadingHealthDataState extends NewsState{}
class GetHealthDataState extends NewsState{}
class ErrorHealthDataState extends NewsState{}