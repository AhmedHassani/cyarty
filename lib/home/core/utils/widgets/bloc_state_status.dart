// import 'package:equatable/equatable.dart';
//
// class BlocStateStatus extends Equatable {
//   final bool? inProcess;
//   final bool? success;
//   final bool? failure;
//   final String? errorMessage;
//
//   const BlocStateStatus({
//     this.inProcess,
//     this.success,
//     this.failure,
//     this.errorMessage,
//   });
//
//   BlocStateStatus copyWith({
//     bool? inProcess,
//     bool? success,
//     bool? failure,
//     String? errorMessage,
//   }) {
//     return BlocStateStatus(
//       errorMessage: errorMessage ?? this.errorMessage,
//       failure: failure ?? this.failure,
//       inProcess: inProcess ?? this.inProcess,
//       success: success ?? this.success,
//     );
//   }
//
//   BlocStateStatus initial() {
//     return const BlocStateStatus(
//       errorMessage: '',
//       failure: false,
//       inProcess: false,
//       success: false,
//     );
//
//   }
//
//   @override
//   List<Object> get props => [
//     inProcess!,
//     success!,
//     failure!,
//     errorMessage!,
//   ];
// }
