%% Do not modify this file, it is automatically
%% generated by abnfc. All changes will be lost
%% when it is regenerated.
%% Generated by abnfc_gen on 2009-02-24 17:13:56

-module(rfc4234_core).

-export([]).

-compile(export_all).

-include("rfc4234_core.hrl").

'ALPHA'() ->
    fun (T) ->
	    __P = fun ([C1 | Tl])
			  when (C1 >= 65) and (C1 =< 90) or
				 (C1 >= 97) and (C1 =< 122) ->
			  {ok, C1, Tl};
		      (_) -> fail
		  end,
	    __P(T)
    end.

'ALPHA_dec'(Str) -> ('ALPHA'())(Str).

'BIT'() ->
    fun (T) ->
	    __P = fun ([C1 | Tl]) when (C1 == 48) or (C1 == 49) ->
			  {ok, C1, Tl};
		      (_) -> fail
		  end,
	    __P(T)
    end.

'BIT_dec'(Str) -> ('BIT'())(Str).

'CHAR'() ->
    fun (T) ->
	    __P = fun ([C | Tl]) when (C >= 1) and (C =< 127) ->
			  {ok, C, Tl};
		      (_) -> fail
		  end,
	    __P(T)
    end.

'CHAR_dec'(Str) -> ('CHAR'())(Str).

'CR'() ->
    fun (T) ->
	    __P = fun ([C | Tl]) when C == 13 -> {ok, C, Tl};
		      (_) -> fail
		  end,
	    case __P(T) of
	      {ok, _YY, __Rest} ->
		  __Ret = begin 'CR' end, {ok, __Ret, __Rest};
	      fail -> fail
	    end
    end.

'CR_dec'(Str) -> ('CR'())(Str).

'CRLF'() ->
    fun (T) ->
	    __P = '__alt'(['LF'(), '__seq'(['CR'(), 'LF'()])]),
	    case __P(T) of
	      {ok, _YY, __Rest} ->
		  __Ret = begin 'CRLF' end, {ok, __Ret, __Rest};
	      fail -> fail
	    end
    end.

'CRLF_dec'(Str) -> ('CRLF'())(Str).

'CTL'() ->
    fun (T) ->
	    __P = fun ([C1 | Tl])
			  when (C1 == 127) or (C1 >= 0) and (C1 =< 31) ->
			  {ok, C1, Tl};
		      (_) -> fail
		  end,
	    __P(T)
    end.

'CTL_dec'(Str) -> ('CTL'())(Str).

'DIGIT'() ->
    fun (T) ->
	    __P = fun ([C | Tl]) when (C >= 48) and (C =< 57) ->
			  {ok, C, Tl};
		      (_) -> fail
		  end,
	    __P(T)
    end.

'DIGIT_dec'(Str) -> ('DIGIT'())(Str).

'DQUOTE'() ->
    fun (T) ->
	    __P = fun ([C | Tl]) when C == 34 -> {ok, C, Tl};
		      (_) -> fail
		  end,
	    case __P(T) of
	      {ok, _YY, __Rest} ->
		  __Ret = begin 'DQUOTE' end, {ok, __Ret, __Rest};
	      fail -> fail
	    end
    end.

'DQUOTE_dec'(Str) -> ('DQUOTE'())(Str).

'HEXDIG'() ->
    fun (T) ->
	    __P = '__alt'(['DIGIT'(),
			   fun ([C1 | Tl]) when (C1 == 97) or (C1 == 65) ->
				   {ok, C1, Tl};
			       (_) -> fail
			   end,
			   fun ([C1 | Tl]) when (C1 == 98) or (C1 == 66) ->
				   {ok, C1, Tl};
			       (_) -> fail
			   end,
			   fun ([C1 | Tl]) when (C1 == 99) or (C1 == 67) ->
				   {ok, C1, Tl};
			       (_) -> fail
			   end,
			   fun ([C1 | Tl]) when (C1 == 100) or (C1 == 68) ->
				   {ok, C1, Tl};
			       (_) -> fail
			   end,
			   fun ([C1 | Tl]) when (C1 == 101) or (C1 == 69) ->
				   {ok, C1, Tl};
			       (_) -> fail
			   end,
			   fun ([C1 | Tl]) when (C1 == 102) or (C1 == 70) ->
				   {ok, C1, Tl};
			       (_) -> fail
			   end]),
	    __P(T)
    end.

'HEXDIG_dec'(Str) -> ('HEXDIG'())(Str).

'HTAB'() ->
    fun (T) ->
	    __P = fun ([C | Tl]) when C == 9 -> {ok, C, Tl};
		      (_) -> fail
		  end,
	    case __P(T) of
	      {ok, _YY, __Rest} ->
		  __Ret = begin 'HTAB' end, {ok, __Ret, __Rest};
	      fail -> fail
	    end
    end.

'HTAB_dec'(Str) -> ('HTAB'())(Str).

'LF'() ->
    fun (T) ->
	    __P = fun ([C | Tl]) when C == 10 -> {ok, C, Tl};
		      (_) -> fail
		  end,
	    case __P(T) of
	      {ok, _YY, __Rest} ->
		  __Ret = begin 'LF' end, {ok, __Ret, __Rest};
	      fail -> fail
	    end
    end.

'LF_dec'(Str) -> ('LF'())(Str).

'LWSP'() ->
    fun (T) ->
	    __P = '__repeat'(0, infinity,
			     '__alt'(['WSP'(), '__seq'(['CRLF'(), 'WSP'()])])),
	    case __P(T) of
	      {ok, _YY, __Rest} ->
		  __Ret = begin 'LWSP' end, {ok, __Ret, __Rest};
	      fail -> fail
	    end
    end.

'LWSP_dec'(Str) -> ('LWSP'())(Str).

'OCTET'() ->
    fun (T) ->
	    __P = fun ([C | Tl]) when (C >= 0) and (C =< 255) ->
			  {ok, C, Tl};
		      (_) -> fail
		  end,
	    __P(T)
    end.

'OCTET_dec'(Str) -> ('OCTET'())(Str).

'SP'() ->
    fun (T) ->
	    __P = fun ([C | Tl]) when C == 32 -> {ok, C, Tl};
		      (_) -> fail
		  end,
	    case __P(T) of
	      {ok, _YY, __Rest} ->
		  __Ret = begin 'SP' end, {ok, __Ret, __Rest};
	      fail -> fail
	    end
    end.

'SP_dec'(Str) -> ('SP'())(Str).

'VCHAR'() ->
    fun (T) ->
	    __P = fun ([C | Tl]) when (C >= 33) and (C =< 126) ->
			  {ok, C, Tl};
		      (_) -> fail
		  end,
	    __P(T)
    end.

'VCHAR_dec'(Str) -> ('VCHAR'())(Str).

'WSP'() ->
    fun (T) ->
	    __P = '__alt'(['SP'(), 'HTAB'()]),
	    case __P(T) of
	      {ok, _YY, __Rest} ->
		  __Ret = begin 'WSP' end, {ok, __Ret, __Rest};
	      fail -> fail
	    end
    end.

'WSP_dec'(Str) -> ('WSP'())(Str).

'__alt'([P | Ps]) ->
    fun (T) ->
	    case P(T) of
	      {ok, R, T1} -> {ok, R, T1};
	      fail ->
		  case Ps of
		    [] -> fail;
		    _ -> ('__alt'(Ps))(T)
		  end
	    end
    end.

'__repeat'(Min, Max, P) -> '__repeat'(Min, Max, P, 0).

'__repeat'(Min, Max, P, Found) ->
    fun (T) ->
	    case P(T) of
	      {ok, R1, T1} when Max == Found + 1 -> {ok, [R1], T1};
	      {ok, R1, T1} ->
		  case ('__repeat'(Min, Max, P, Found + 1))(T1) of
		    {ok, R2, T2} -> {ok, [R1 | R2], T2};
		    fail when Found >= Min -> {ok, [R1], T1};
		    fail -> fail
		  end;
	      fail when Found >= Min -> {ok, [], T};
	      fail -> fail
	    end
    end.

'__seq'([P | Ps]) ->
    fun (T) ->
	    case P(T) of
	      {ok, R1, T1} ->
		  case ('__seq'(Ps))(T1) of
		    {ok, R2, T2} -> {ok, [R1 | R2], T2};
		    fail -> fail
		  end;
	      fail -> fail
	    end
    end;
'__seq'([]) -> fun (T) -> {ok, [], T} end.