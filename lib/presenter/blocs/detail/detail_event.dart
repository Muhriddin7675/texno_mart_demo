part of 'detail_bloc.dart';


abstract class DetailEvent {}

final class LoadDetailEvent extends DetailEvent{
 final String id;
 LoadDetailEvent({required this.id});
}

final class GetDetailEvent extends DetailEvent{}
