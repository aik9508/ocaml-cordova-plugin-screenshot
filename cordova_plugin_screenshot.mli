(* -------------------------------------------------------------------------- *)
module Response_uri : sig
  type t
  val uri : t -> string [@@js.get "URI"]
end

module Response_file : sig
  type t
  val filePath : t -> string [@@js.get "filePath"]
end

val save :
  ?callback: (string option -> Response_file.t -> string Lwt.t) ->
  ?format: string                                               ->
  ?quality: int                                                 ->
  filename: string                                              ->
  unit
[@@js.global "navigator.screenshot.save"]

val uri :
  ?callback: (string option -> Response_uri.t -> string Lwt.t) ->
  ?quality: int                                                ->
  unit                                                         ->
  unit
[@@js.global "navigator.screenshot.URI"]

val uri_sync : 
  ?callback: (string option -> Response_uri.t -> string Lwt.t) ->
  ?quality: int                                                ->
  unit                                                         ->
  unit
[@@js.global "navigator.screenshot.URISync"]
(* -------------------------------------------------------------------------- *)
