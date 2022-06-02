class DefaultResponse {
  const DefaultResponse({
    this.first = true,
    this.last = false,
    required this.message,
    this.numberOfElements,
    this.offset,
    this.pageNumber,
    required this.statusCode,
    this.totalElements,
    this.totalPages,
  });

  final bool first;
  final bool last;
  final String message;
  final int? numberOfElements;
  final int? offset;
  final int? pageNumber;
  final int statusCode;
  final int? totalElements;
  final int? totalPages;

  DefaultResponse copyWith({
    final bool? first,
    final bool? last,
    final String? message,
    final int? numberOfElements,
    final int? offset,
    final int? pageNumber,
    final int? statusCode,
    final int? totalElements,
    final int? totalPages,
  }) {
    return DefaultResponse(
      first: first ?? this.first,
      last: last ?? this.last,
      message: message ?? this.message,
      numberOfElements: numberOfElements ?? this.numberOfElements,
      offset: offset ?? this.offset,
      pageNumber: pageNumber ?? this.pageNumber,
      statusCode: statusCode ?? this.statusCode,
      totalElements: totalElements ?? this.totalElements,
      totalPages: totalPages ?? this.totalPages,
    );
  }

  factory DefaultResponse.fromJson(final Map<String, dynamic> json) {
    return DefaultResponse(
      first: (json['first'] as bool?) ?? true,
      last: (json['last'] as bool?) ?? false,
      message: json['message'] as String,
      numberOfElements: json['numberOfElements'] as int?,
      offset: json['offset'] as int?,
      pageNumber: json['pageNumber'] as int?,
      statusCode: json['statusCode'] as int,
      totalElements: json['totalElements'] as int?,
      totalPages: json['totalPages'] as int?,
    );
  }

  int? get lastElement {
    if (numberOfElements != null && offset != null) {
      return offset! - 1 + numberOfElements!;
    }
    return null;
  }
}
