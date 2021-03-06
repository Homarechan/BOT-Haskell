{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-fields #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-----------------------------------------------------------------
-- Autogenerated by Thrift Compiler (0.11.0)                      --
--                                                             --
-- DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING --
-----------------------------------------------------------------

module LineApi.BotService where
import Prelude (($), (.), (>>=), (==), (++))
import qualified Prelude as P
import qualified Control.Exception as X
import qualified Control.Monad as M ( liftM, ap, when )
import Data.Functor ( (<$>) )
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Hashable as H
import qualified Data.Int as I
import qualified Data.Maybe as M (catMaybes)
import qualified Data.Text.Lazy.Encoding as E ( decodeUtf8, encodeUtf8 )
import qualified Data.Text.Lazy as LT
import qualified GHC.Generics as G (Generic)
import qualified Data.Typeable as TY ( Typeable )
import qualified Data.HashMap.Strict as Map
import qualified Data.HashSet as Set
import qualified Data.Vector as Vector
import qualified Test.QuickCheck.Arbitrary as QC ( Arbitrary(..) )
import qualified Test.QuickCheck as QC ( elements )

import qualified Thrift as T
import qualified Thrift.Types as T
import qualified Thrift.Arbitraries as T


import LineApi.Line_Types
import qualified LineApi.BotService_Iface as Iface
-- HELPER FUNCTIONS AND STRUCTURES --

data NotifyLeaveGroup_args = NotifyLeaveGroup_args  { notifyLeaveGroup_args_groupMid :: LT.Text
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable NotifyLeaveGroup_args where
  hashWithSalt salt record = salt   `H.hashWithSalt` notifyLeaveGroup_args_groupMid record
instance QC.Arbitrary NotifyLeaveGroup_args where
  arbitrary = M.liftM NotifyLeaveGroup_args (QC.arbitrary)
  shrink obj | obj == default_NotifyLeaveGroup_args = []
             | P.otherwise = M.catMaybes
    [ if obj == default_NotifyLeaveGroup_args{notifyLeaveGroup_args_groupMid = notifyLeaveGroup_args_groupMid obj} then P.Nothing else P.Just $ default_NotifyLeaveGroup_args{notifyLeaveGroup_args_groupMid = notifyLeaveGroup_args_groupMid obj}
    ]
from_NotifyLeaveGroup_args :: NotifyLeaveGroup_args -> T.ThriftVal
from_NotifyLeaveGroup_args record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v4080 -> P.Just (1, ("groupMid",T.TString $ E.encodeUtf8 _v4080))) $ notifyLeaveGroup_args_groupMid record
  ]
write_NotifyLeaveGroup_args :: T.Protocol p => p -> NotifyLeaveGroup_args -> P.IO ()
write_NotifyLeaveGroup_args oprot record = T.writeVal oprot $ from_NotifyLeaveGroup_args record
encode_NotifyLeaveGroup_args :: T.StatelessProtocol p => p -> NotifyLeaveGroup_args -> LBS.ByteString
encode_NotifyLeaveGroup_args oprot record = T.serializeVal oprot $ from_NotifyLeaveGroup_args record
to_NotifyLeaveGroup_args :: T.ThriftVal -> NotifyLeaveGroup_args
to_NotifyLeaveGroup_args (T.TStruct fields) = NotifyLeaveGroup_args{
  notifyLeaveGroup_args_groupMid = P.maybe (notifyLeaveGroup_args_groupMid default_NotifyLeaveGroup_args) (\(_,_val4082) -> (case _val4082 of {T.TString _val4083 -> E.decodeUtf8 _val4083; _ -> P.error "wrong type"})) (Map.lookup (1) fields)
  }
to_NotifyLeaveGroup_args _ = P.error "not a struct"
read_NotifyLeaveGroup_args :: T.Protocol p => p -> P.IO NotifyLeaveGroup_args
read_NotifyLeaveGroup_args iprot = to_NotifyLeaveGroup_args <$> T.readVal iprot (T.T_STRUCT typemap_NotifyLeaveGroup_args)
decode_NotifyLeaveGroup_args :: T.StatelessProtocol p => p -> LBS.ByteString -> NotifyLeaveGroup_args
decode_NotifyLeaveGroup_args iprot bs = to_NotifyLeaveGroup_args $ T.deserializeVal iprot (T.T_STRUCT typemap_NotifyLeaveGroup_args) bs
typemap_NotifyLeaveGroup_args :: T.TypeMap
typemap_NotifyLeaveGroup_args = Map.fromList [(1,("groupMid",T.T_STRING))]
default_NotifyLeaveGroup_args :: NotifyLeaveGroup_args
default_NotifyLeaveGroup_args = NotifyLeaveGroup_args{
  notifyLeaveGroup_args_groupMid = ""}
data NotifyLeaveGroup_result = NotifyLeaveGroup_result  { notifyLeaveGroup_result_e :: P.Maybe TalkException
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable NotifyLeaveGroup_result where
  hashWithSalt salt record = salt   `H.hashWithSalt` notifyLeaveGroup_result_e record
instance QC.Arbitrary NotifyLeaveGroup_result where
  arbitrary = M.liftM NotifyLeaveGroup_result (M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_NotifyLeaveGroup_result = []
             | P.otherwise = M.catMaybes
    [ if obj == default_NotifyLeaveGroup_result{notifyLeaveGroup_result_e = notifyLeaveGroup_result_e obj} then P.Nothing else P.Just $ default_NotifyLeaveGroup_result{notifyLeaveGroup_result_e = notifyLeaveGroup_result_e obj}
    ]
from_NotifyLeaveGroup_result :: NotifyLeaveGroup_result -> T.ThriftVal
from_NotifyLeaveGroup_result record = T.TStruct $ Map.fromList
  (let exns = M.catMaybes [ (\_v4086 -> (1, ("e",from_TalkException _v4086))) <$> notifyLeaveGroup_result_e record]
  in if P.not (P.null exns) then exns else M.catMaybes
    [ (\_v4086 -> (1, ("e",from_TalkException _v4086))) <$> notifyLeaveGroup_result_e record
    ]
    )
write_NotifyLeaveGroup_result :: T.Protocol p => p -> NotifyLeaveGroup_result -> P.IO ()
write_NotifyLeaveGroup_result oprot record = T.writeVal oprot $ from_NotifyLeaveGroup_result record
encode_NotifyLeaveGroup_result :: T.StatelessProtocol p => p -> NotifyLeaveGroup_result -> LBS.ByteString
encode_NotifyLeaveGroup_result oprot record = T.serializeVal oprot $ from_NotifyLeaveGroup_result record
to_NotifyLeaveGroup_result :: T.ThriftVal -> NotifyLeaveGroup_result
to_NotifyLeaveGroup_result (T.TStruct fields) = NotifyLeaveGroup_result{
  notifyLeaveGroup_result_e = P.maybe (P.Nothing) (\(_,_val4088) -> P.Just (case _val4088 of {T.TStruct _val4089 -> (to_TalkException (T.TStruct _val4089)); _ -> P.error "wrong type"})) (Map.lookup (1) fields)
  }
to_NotifyLeaveGroup_result _ = P.error "not a struct"
read_NotifyLeaveGroup_result :: T.Protocol p => p -> P.IO NotifyLeaveGroup_result
read_NotifyLeaveGroup_result iprot = to_NotifyLeaveGroup_result <$> T.readVal iprot (T.T_STRUCT typemap_NotifyLeaveGroup_result)
decode_NotifyLeaveGroup_result :: T.StatelessProtocol p => p -> LBS.ByteString -> NotifyLeaveGroup_result
decode_NotifyLeaveGroup_result iprot bs = to_NotifyLeaveGroup_result $ T.deserializeVal iprot (T.T_STRUCT typemap_NotifyLeaveGroup_result) bs
typemap_NotifyLeaveGroup_result :: T.TypeMap
typemap_NotifyLeaveGroup_result = Map.fromList [(1,("e",(T.T_STRUCT typemap_TalkException)))]
default_NotifyLeaveGroup_result :: NotifyLeaveGroup_result
default_NotifyLeaveGroup_result = NotifyLeaveGroup_result{
  notifyLeaveGroup_result_e = P.Nothing}
data NotifyLeaveRoom_args = NotifyLeaveRoom_args  { notifyLeaveRoom_args_roomMid :: LT.Text
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable NotifyLeaveRoom_args where
  hashWithSalt salt record = salt   `H.hashWithSalt` notifyLeaveRoom_args_roomMid record
instance QC.Arbitrary NotifyLeaveRoom_args where
  arbitrary = M.liftM NotifyLeaveRoom_args (QC.arbitrary)
  shrink obj | obj == default_NotifyLeaveRoom_args = []
             | P.otherwise = M.catMaybes
    [ if obj == default_NotifyLeaveRoom_args{notifyLeaveRoom_args_roomMid = notifyLeaveRoom_args_roomMid obj} then P.Nothing else P.Just $ default_NotifyLeaveRoom_args{notifyLeaveRoom_args_roomMid = notifyLeaveRoom_args_roomMid obj}
    ]
from_NotifyLeaveRoom_args :: NotifyLeaveRoom_args -> T.ThriftVal
from_NotifyLeaveRoom_args record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v4092 -> P.Just (1, ("roomMid",T.TString $ E.encodeUtf8 _v4092))) $ notifyLeaveRoom_args_roomMid record
  ]
write_NotifyLeaveRoom_args :: T.Protocol p => p -> NotifyLeaveRoom_args -> P.IO ()
write_NotifyLeaveRoom_args oprot record = T.writeVal oprot $ from_NotifyLeaveRoom_args record
encode_NotifyLeaveRoom_args :: T.StatelessProtocol p => p -> NotifyLeaveRoom_args -> LBS.ByteString
encode_NotifyLeaveRoom_args oprot record = T.serializeVal oprot $ from_NotifyLeaveRoom_args record
to_NotifyLeaveRoom_args :: T.ThriftVal -> NotifyLeaveRoom_args
to_NotifyLeaveRoom_args (T.TStruct fields) = NotifyLeaveRoom_args{
  notifyLeaveRoom_args_roomMid = P.maybe (notifyLeaveRoom_args_roomMid default_NotifyLeaveRoom_args) (\(_,_val4094) -> (case _val4094 of {T.TString _val4095 -> E.decodeUtf8 _val4095; _ -> P.error "wrong type"})) (Map.lookup (1) fields)
  }
to_NotifyLeaveRoom_args _ = P.error "not a struct"
read_NotifyLeaveRoom_args :: T.Protocol p => p -> P.IO NotifyLeaveRoom_args
read_NotifyLeaveRoom_args iprot = to_NotifyLeaveRoom_args <$> T.readVal iprot (T.T_STRUCT typemap_NotifyLeaveRoom_args)
decode_NotifyLeaveRoom_args :: T.StatelessProtocol p => p -> LBS.ByteString -> NotifyLeaveRoom_args
decode_NotifyLeaveRoom_args iprot bs = to_NotifyLeaveRoom_args $ T.deserializeVal iprot (T.T_STRUCT typemap_NotifyLeaveRoom_args) bs
typemap_NotifyLeaveRoom_args :: T.TypeMap
typemap_NotifyLeaveRoom_args = Map.fromList [(1,("roomMid",T.T_STRING))]
default_NotifyLeaveRoom_args :: NotifyLeaveRoom_args
default_NotifyLeaveRoom_args = NotifyLeaveRoom_args{
  notifyLeaveRoom_args_roomMid = ""}
data NotifyLeaveRoom_result = NotifyLeaveRoom_result  { notifyLeaveRoom_result_e :: P.Maybe TalkException
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable NotifyLeaveRoom_result where
  hashWithSalt salt record = salt   `H.hashWithSalt` notifyLeaveRoom_result_e record
instance QC.Arbitrary NotifyLeaveRoom_result where
  arbitrary = M.liftM NotifyLeaveRoom_result (M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_NotifyLeaveRoom_result = []
             | P.otherwise = M.catMaybes
    [ if obj == default_NotifyLeaveRoom_result{notifyLeaveRoom_result_e = notifyLeaveRoom_result_e obj} then P.Nothing else P.Just $ default_NotifyLeaveRoom_result{notifyLeaveRoom_result_e = notifyLeaveRoom_result_e obj}
    ]
from_NotifyLeaveRoom_result :: NotifyLeaveRoom_result -> T.ThriftVal
from_NotifyLeaveRoom_result record = T.TStruct $ Map.fromList
  (let exns = M.catMaybes [ (\_v4098 -> (1, ("e",from_TalkException _v4098))) <$> notifyLeaveRoom_result_e record]
  in if P.not (P.null exns) then exns else M.catMaybes
    [ (\_v4098 -> (1, ("e",from_TalkException _v4098))) <$> notifyLeaveRoom_result_e record
    ]
    )
write_NotifyLeaveRoom_result :: T.Protocol p => p -> NotifyLeaveRoom_result -> P.IO ()
write_NotifyLeaveRoom_result oprot record = T.writeVal oprot $ from_NotifyLeaveRoom_result record
encode_NotifyLeaveRoom_result :: T.StatelessProtocol p => p -> NotifyLeaveRoom_result -> LBS.ByteString
encode_NotifyLeaveRoom_result oprot record = T.serializeVal oprot $ from_NotifyLeaveRoom_result record
to_NotifyLeaveRoom_result :: T.ThriftVal -> NotifyLeaveRoom_result
to_NotifyLeaveRoom_result (T.TStruct fields) = NotifyLeaveRoom_result{
  notifyLeaveRoom_result_e = P.maybe (P.Nothing) (\(_,_val4100) -> P.Just (case _val4100 of {T.TStruct _val4101 -> (to_TalkException (T.TStruct _val4101)); _ -> P.error "wrong type"})) (Map.lookup (1) fields)
  }
to_NotifyLeaveRoom_result _ = P.error "not a struct"
read_NotifyLeaveRoom_result :: T.Protocol p => p -> P.IO NotifyLeaveRoom_result
read_NotifyLeaveRoom_result iprot = to_NotifyLeaveRoom_result <$> T.readVal iprot (T.T_STRUCT typemap_NotifyLeaveRoom_result)
decode_NotifyLeaveRoom_result :: T.StatelessProtocol p => p -> LBS.ByteString -> NotifyLeaveRoom_result
decode_NotifyLeaveRoom_result iprot bs = to_NotifyLeaveRoom_result $ T.deserializeVal iprot (T.T_STRUCT typemap_NotifyLeaveRoom_result) bs
typemap_NotifyLeaveRoom_result :: T.TypeMap
typemap_NotifyLeaveRoom_result = Map.fromList [(1,("e",(T.T_STRUCT typemap_TalkException)))]
default_NotifyLeaveRoom_result :: NotifyLeaveRoom_result
default_NotifyLeaveRoom_result = NotifyLeaveRoom_result{
  notifyLeaveRoom_result_e = P.Nothing}
data GetBotUseInfo_args = GetBotUseInfo_args  { getBotUseInfo_args_botMid :: LT.Text
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable GetBotUseInfo_args where
  hashWithSalt salt record = salt   `H.hashWithSalt` getBotUseInfo_args_botMid record
instance QC.Arbitrary GetBotUseInfo_args where
  arbitrary = M.liftM GetBotUseInfo_args (QC.arbitrary)
  shrink obj | obj == default_GetBotUseInfo_args = []
             | P.otherwise = M.catMaybes
    [ if obj == default_GetBotUseInfo_args{getBotUseInfo_args_botMid = getBotUseInfo_args_botMid obj} then P.Nothing else P.Just $ default_GetBotUseInfo_args{getBotUseInfo_args_botMid = getBotUseInfo_args_botMid obj}
    ]
from_GetBotUseInfo_args :: GetBotUseInfo_args -> T.ThriftVal
from_GetBotUseInfo_args record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v4104 -> P.Just (2, ("botMid",T.TString $ E.encodeUtf8 _v4104))) $ getBotUseInfo_args_botMid record
  ]
write_GetBotUseInfo_args :: T.Protocol p => p -> GetBotUseInfo_args -> P.IO ()
write_GetBotUseInfo_args oprot record = T.writeVal oprot $ from_GetBotUseInfo_args record
encode_GetBotUseInfo_args :: T.StatelessProtocol p => p -> GetBotUseInfo_args -> LBS.ByteString
encode_GetBotUseInfo_args oprot record = T.serializeVal oprot $ from_GetBotUseInfo_args record
to_GetBotUseInfo_args :: T.ThriftVal -> GetBotUseInfo_args
to_GetBotUseInfo_args (T.TStruct fields) = GetBotUseInfo_args{
  getBotUseInfo_args_botMid = P.maybe (getBotUseInfo_args_botMid default_GetBotUseInfo_args) (\(_,_val4106) -> (case _val4106 of {T.TString _val4107 -> E.decodeUtf8 _val4107; _ -> P.error "wrong type"})) (Map.lookup (2) fields)
  }
to_GetBotUseInfo_args _ = P.error "not a struct"
read_GetBotUseInfo_args :: T.Protocol p => p -> P.IO GetBotUseInfo_args
read_GetBotUseInfo_args iprot = to_GetBotUseInfo_args <$> T.readVal iprot (T.T_STRUCT typemap_GetBotUseInfo_args)
decode_GetBotUseInfo_args :: T.StatelessProtocol p => p -> LBS.ByteString -> GetBotUseInfo_args
decode_GetBotUseInfo_args iprot bs = to_GetBotUseInfo_args $ T.deserializeVal iprot (T.T_STRUCT typemap_GetBotUseInfo_args) bs
typemap_GetBotUseInfo_args :: T.TypeMap
typemap_GetBotUseInfo_args = Map.fromList [(2,("botMid",T.T_STRING))]
default_GetBotUseInfo_args :: GetBotUseInfo_args
default_GetBotUseInfo_args = GetBotUseInfo_args{
  getBotUseInfo_args_botMid = ""}
data GetBotUseInfo_result = GetBotUseInfo_result  { getBotUseInfo_result_success :: BotUseInfo
  , getBotUseInfo_result_e :: P.Maybe TalkException
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable GetBotUseInfo_result where
  hashWithSalt salt record = salt   `H.hashWithSalt` getBotUseInfo_result_success record   `H.hashWithSalt` getBotUseInfo_result_e record
instance QC.Arbitrary GetBotUseInfo_result where
  arbitrary = M.liftM GetBotUseInfo_result (QC.arbitrary)
          `M.ap`(M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_GetBotUseInfo_result = []
             | P.otherwise = M.catMaybes
    [ if obj == default_GetBotUseInfo_result{getBotUseInfo_result_success = getBotUseInfo_result_success obj} then P.Nothing else P.Just $ default_GetBotUseInfo_result{getBotUseInfo_result_success = getBotUseInfo_result_success obj}
    , if obj == default_GetBotUseInfo_result{getBotUseInfo_result_e = getBotUseInfo_result_e obj} then P.Nothing else P.Just $ default_GetBotUseInfo_result{getBotUseInfo_result_e = getBotUseInfo_result_e obj}
    ]
from_GetBotUseInfo_result :: GetBotUseInfo_result -> T.ThriftVal
from_GetBotUseInfo_result record = T.TStruct $ Map.fromList
  (let exns = M.catMaybes [ (\_v4110 -> (1, ("e",from_TalkException _v4110))) <$> getBotUseInfo_result_e record]
  in if P.not (P.null exns) then exns else M.catMaybes
    [ (\_v4110 -> P.Just (0, ("success",from_BotUseInfo _v4110))) $ getBotUseInfo_result_success record
    , (\_v4110 -> (1, ("e",from_TalkException _v4110))) <$> getBotUseInfo_result_e record
    ]
    )
write_GetBotUseInfo_result :: T.Protocol p => p -> GetBotUseInfo_result -> P.IO ()
write_GetBotUseInfo_result oprot record = T.writeVal oprot $ from_GetBotUseInfo_result record
encode_GetBotUseInfo_result :: T.StatelessProtocol p => p -> GetBotUseInfo_result -> LBS.ByteString
encode_GetBotUseInfo_result oprot record = T.serializeVal oprot $ from_GetBotUseInfo_result record
to_GetBotUseInfo_result :: T.ThriftVal -> GetBotUseInfo_result
to_GetBotUseInfo_result (T.TStruct fields) = GetBotUseInfo_result{
  getBotUseInfo_result_success = P.maybe (getBotUseInfo_result_success default_GetBotUseInfo_result) (\(_,_val4112) -> (case _val4112 of {T.TStruct _val4113 -> (to_BotUseInfo (T.TStruct _val4113)); _ -> P.error "wrong type"})) (Map.lookup (0) fields),
  getBotUseInfo_result_e = P.maybe (P.Nothing) (\(_,_val4112) -> P.Just (case _val4112 of {T.TStruct _val4114 -> (to_TalkException (T.TStruct _val4114)); _ -> P.error "wrong type"})) (Map.lookup (1) fields)
  }
to_GetBotUseInfo_result _ = P.error "not a struct"
read_GetBotUseInfo_result :: T.Protocol p => p -> P.IO GetBotUseInfo_result
read_GetBotUseInfo_result iprot = to_GetBotUseInfo_result <$> T.readVal iprot (T.T_STRUCT typemap_GetBotUseInfo_result)
decode_GetBotUseInfo_result :: T.StatelessProtocol p => p -> LBS.ByteString -> GetBotUseInfo_result
decode_GetBotUseInfo_result iprot bs = to_GetBotUseInfo_result $ T.deserializeVal iprot (T.T_STRUCT typemap_GetBotUseInfo_result) bs
typemap_GetBotUseInfo_result :: T.TypeMap
typemap_GetBotUseInfo_result = Map.fromList [(0,("success",(T.T_STRUCT typemap_BotUseInfo))),(1,("e",(T.T_STRUCT typemap_TalkException)))]
default_GetBotUseInfo_result :: GetBotUseInfo_result
default_GetBotUseInfo_result = GetBotUseInfo_result{
  getBotUseInfo_result_success = default_BotUseInfo,
  getBotUseInfo_result_e = P.Nothing}
data SendChatCheckedByWatermark_args = SendChatCheckedByWatermark_args  { sendChatCheckedByWatermark_args_seq :: I.Int32
  , sendChatCheckedByWatermark_args_mid :: LT.Text
  , sendChatCheckedByWatermark_args_watermark :: I.Int64
  , sendChatCheckedByWatermark_args_sessionId :: I.Int32
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable SendChatCheckedByWatermark_args where
  hashWithSalt salt record = salt   `H.hashWithSalt` sendChatCheckedByWatermark_args_seq record   `H.hashWithSalt` sendChatCheckedByWatermark_args_mid record   `H.hashWithSalt` sendChatCheckedByWatermark_args_watermark record   `H.hashWithSalt` sendChatCheckedByWatermark_args_sessionId record
instance QC.Arbitrary SendChatCheckedByWatermark_args where
  arbitrary = M.liftM SendChatCheckedByWatermark_args (QC.arbitrary)
          `M.ap`(QC.arbitrary)
          `M.ap`(QC.arbitrary)
          `M.ap`(QC.arbitrary)
  shrink obj | obj == default_SendChatCheckedByWatermark_args = []
             | P.otherwise = M.catMaybes
    [ if obj == default_SendChatCheckedByWatermark_args{sendChatCheckedByWatermark_args_seq = sendChatCheckedByWatermark_args_seq obj} then P.Nothing else P.Just $ default_SendChatCheckedByWatermark_args{sendChatCheckedByWatermark_args_seq = sendChatCheckedByWatermark_args_seq obj}
    , if obj == default_SendChatCheckedByWatermark_args{sendChatCheckedByWatermark_args_mid = sendChatCheckedByWatermark_args_mid obj} then P.Nothing else P.Just $ default_SendChatCheckedByWatermark_args{sendChatCheckedByWatermark_args_mid = sendChatCheckedByWatermark_args_mid obj}
    , if obj == default_SendChatCheckedByWatermark_args{sendChatCheckedByWatermark_args_watermark = sendChatCheckedByWatermark_args_watermark obj} then P.Nothing else P.Just $ default_SendChatCheckedByWatermark_args{sendChatCheckedByWatermark_args_watermark = sendChatCheckedByWatermark_args_watermark obj}
    , if obj == default_SendChatCheckedByWatermark_args{sendChatCheckedByWatermark_args_sessionId = sendChatCheckedByWatermark_args_sessionId obj} then P.Nothing else P.Just $ default_SendChatCheckedByWatermark_args{sendChatCheckedByWatermark_args_sessionId = sendChatCheckedByWatermark_args_sessionId obj}
    ]
from_SendChatCheckedByWatermark_args :: SendChatCheckedByWatermark_args -> T.ThriftVal
from_SendChatCheckedByWatermark_args record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v4117 -> P.Just (1, ("seq",T.TI32 _v4117))) $ sendChatCheckedByWatermark_args_seq record
  , (\_v4117 -> P.Just (2, ("mid",T.TString $ E.encodeUtf8 _v4117))) $ sendChatCheckedByWatermark_args_mid record
  , (\_v4117 -> P.Just (3, ("watermark",T.TI64 _v4117))) $ sendChatCheckedByWatermark_args_watermark record
  , (\_v4117 -> P.Just (4, ("sessionId",T.TI32 _v4117))) $ sendChatCheckedByWatermark_args_sessionId record
  ]
write_SendChatCheckedByWatermark_args :: T.Protocol p => p -> SendChatCheckedByWatermark_args -> P.IO ()
write_SendChatCheckedByWatermark_args oprot record = T.writeVal oprot $ from_SendChatCheckedByWatermark_args record
encode_SendChatCheckedByWatermark_args :: T.StatelessProtocol p => p -> SendChatCheckedByWatermark_args -> LBS.ByteString
encode_SendChatCheckedByWatermark_args oprot record = T.serializeVal oprot $ from_SendChatCheckedByWatermark_args record
to_SendChatCheckedByWatermark_args :: T.ThriftVal -> SendChatCheckedByWatermark_args
to_SendChatCheckedByWatermark_args (T.TStruct fields) = SendChatCheckedByWatermark_args{
  sendChatCheckedByWatermark_args_seq = P.maybe (sendChatCheckedByWatermark_args_seq default_SendChatCheckedByWatermark_args) (\(_,_val4119) -> (case _val4119 of {T.TI32 _val4120 -> _val4120; _ -> P.error "wrong type"})) (Map.lookup (1) fields),
  sendChatCheckedByWatermark_args_mid = P.maybe (sendChatCheckedByWatermark_args_mid default_SendChatCheckedByWatermark_args) (\(_,_val4119) -> (case _val4119 of {T.TString _val4121 -> E.decodeUtf8 _val4121; _ -> P.error "wrong type"})) (Map.lookup (2) fields),
  sendChatCheckedByWatermark_args_watermark = P.maybe (sendChatCheckedByWatermark_args_watermark default_SendChatCheckedByWatermark_args) (\(_,_val4119) -> (case _val4119 of {T.TI64 _val4122 -> _val4122; _ -> P.error "wrong type"})) (Map.lookup (3) fields),
  sendChatCheckedByWatermark_args_sessionId = P.maybe (sendChatCheckedByWatermark_args_sessionId default_SendChatCheckedByWatermark_args) (\(_,_val4119) -> (case _val4119 of {T.TI32 _val4123 -> _val4123; _ -> P.error "wrong type"})) (Map.lookup (4) fields)
  }
to_SendChatCheckedByWatermark_args _ = P.error "not a struct"
read_SendChatCheckedByWatermark_args :: T.Protocol p => p -> P.IO SendChatCheckedByWatermark_args
read_SendChatCheckedByWatermark_args iprot = to_SendChatCheckedByWatermark_args <$> T.readVal iprot (T.T_STRUCT typemap_SendChatCheckedByWatermark_args)
decode_SendChatCheckedByWatermark_args :: T.StatelessProtocol p => p -> LBS.ByteString -> SendChatCheckedByWatermark_args
decode_SendChatCheckedByWatermark_args iprot bs = to_SendChatCheckedByWatermark_args $ T.deserializeVal iprot (T.T_STRUCT typemap_SendChatCheckedByWatermark_args) bs
typemap_SendChatCheckedByWatermark_args :: T.TypeMap
typemap_SendChatCheckedByWatermark_args = Map.fromList [(1,("seq",T.T_I32)),(2,("mid",T.T_STRING)),(3,("watermark",T.T_I64)),(4,("sessionId",T.T_I32))]
default_SendChatCheckedByWatermark_args :: SendChatCheckedByWatermark_args
default_SendChatCheckedByWatermark_args = SendChatCheckedByWatermark_args{
  sendChatCheckedByWatermark_args_seq = 0,
  sendChatCheckedByWatermark_args_mid = "",
  sendChatCheckedByWatermark_args_watermark = 0,
  sendChatCheckedByWatermark_args_sessionId = 0}
data SendChatCheckedByWatermark_result = SendChatCheckedByWatermark_result  { sendChatCheckedByWatermark_result_e :: P.Maybe TalkException
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable SendChatCheckedByWatermark_result where
  hashWithSalt salt record = salt   `H.hashWithSalt` sendChatCheckedByWatermark_result_e record
instance QC.Arbitrary SendChatCheckedByWatermark_result where
  arbitrary = M.liftM SendChatCheckedByWatermark_result (M.liftM P.Just QC.arbitrary)
  shrink obj | obj == default_SendChatCheckedByWatermark_result = []
             | P.otherwise = M.catMaybes
    [ if obj == default_SendChatCheckedByWatermark_result{sendChatCheckedByWatermark_result_e = sendChatCheckedByWatermark_result_e obj} then P.Nothing else P.Just $ default_SendChatCheckedByWatermark_result{sendChatCheckedByWatermark_result_e = sendChatCheckedByWatermark_result_e obj}
    ]
from_SendChatCheckedByWatermark_result :: SendChatCheckedByWatermark_result -> T.ThriftVal
from_SendChatCheckedByWatermark_result record = T.TStruct $ Map.fromList
  (let exns = M.catMaybes [ (\_v4126 -> (1, ("e",from_TalkException _v4126))) <$> sendChatCheckedByWatermark_result_e record]
  in if P.not (P.null exns) then exns else M.catMaybes
    [ (\_v4126 -> (1, ("e",from_TalkException _v4126))) <$> sendChatCheckedByWatermark_result_e record
    ]
    )
write_SendChatCheckedByWatermark_result :: T.Protocol p => p -> SendChatCheckedByWatermark_result -> P.IO ()
write_SendChatCheckedByWatermark_result oprot record = T.writeVal oprot $ from_SendChatCheckedByWatermark_result record
encode_SendChatCheckedByWatermark_result :: T.StatelessProtocol p => p -> SendChatCheckedByWatermark_result -> LBS.ByteString
encode_SendChatCheckedByWatermark_result oprot record = T.serializeVal oprot $ from_SendChatCheckedByWatermark_result record
to_SendChatCheckedByWatermark_result :: T.ThriftVal -> SendChatCheckedByWatermark_result
to_SendChatCheckedByWatermark_result (T.TStruct fields) = SendChatCheckedByWatermark_result{
  sendChatCheckedByWatermark_result_e = P.maybe (P.Nothing) (\(_,_val4128) -> P.Just (case _val4128 of {T.TStruct _val4129 -> (to_TalkException (T.TStruct _val4129)); _ -> P.error "wrong type"})) (Map.lookup (1) fields)
  }
to_SendChatCheckedByWatermark_result _ = P.error "not a struct"
read_SendChatCheckedByWatermark_result :: T.Protocol p => p -> P.IO SendChatCheckedByWatermark_result
read_SendChatCheckedByWatermark_result iprot = to_SendChatCheckedByWatermark_result <$> T.readVal iprot (T.T_STRUCT typemap_SendChatCheckedByWatermark_result)
decode_SendChatCheckedByWatermark_result :: T.StatelessProtocol p => p -> LBS.ByteString -> SendChatCheckedByWatermark_result
decode_SendChatCheckedByWatermark_result iprot bs = to_SendChatCheckedByWatermark_result $ T.deserializeVal iprot (T.T_STRUCT typemap_SendChatCheckedByWatermark_result) bs
typemap_SendChatCheckedByWatermark_result :: T.TypeMap
typemap_SendChatCheckedByWatermark_result = Map.fromList [(1,("e",(T.T_STRUCT typemap_TalkException)))]
default_SendChatCheckedByWatermark_result :: SendChatCheckedByWatermark_result
default_SendChatCheckedByWatermark_result = SendChatCheckedByWatermark_result{
  sendChatCheckedByWatermark_result_e = P.Nothing}
process_notifyLeaveGroup (seqid, iprot, oprot, handler) = do
  args <- read_NotifyLeaveGroup_args iprot
  (X.catch
    (X.catch
      (do
        Iface.notifyLeaveGroup handler (notifyLeaveGroup_args_groupMid args)
        let res = default_NotifyLeaveGroup_result
        T.writeMessage oprot ("notifyLeaveGroup", T.M_REPLY, seqid) $
          write_NotifyLeaveGroup_result oprot res)
      (\e  -> do
        let res = default_NotifyLeaveGroup_result{notifyLeaveGroup_result_e = P.Just e}
        T.writeMessage oprot ("notifyLeaveGroup", T.M_REPLY, seqid) $
          write_NotifyLeaveGroup_result oprot res))
    ((\_ -> do
      T.writeMessage oprot ("notifyLeaveGroup", T.M_EXCEPTION, seqid) $
        T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN "")) :: X.SomeException -> P.IO ()))
process_notifyLeaveRoom (seqid, iprot, oprot, handler) = do
  args <- read_NotifyLeaveRoom_args iprot
  (X.catch
    (X.catch
      (do
        Iface.notifyLeaveRoom handler (notifyLeaveRoom_args_roomMid args)
        let res = default_NotifyLeaveRoom_result
        T.writeMessage oprot ("notifyLeaveRoom", T.M_REPLY, seqid) $
          write_NotifyLeaveRoom_result oprot res)
      (\e  -> do
        let res = default_NotifyLeaveRoom_result{notifyLeaveRoom_result_e = P.Just e}
        T.writeMessage oprot ("notifyLeaveRoom", T.M_REPLY, seqid) $
          write_NotifyLeaveRoom_result oprot res))
    ((\_ -> do
      T.writeMessage oprot ("notifyLeaveRoom", T.M_EXCEPTION, seqid) $
        T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN "")) :: X.SomeException -> P.IO ()))
process_getBotUseInfo (seqid, iprot, oprot, handler) = do
  args <- read_GetBotUseInfo_args iprot
  (X.catch
    (X.catch
      (do
        val <- Iface.getBotUseInfo handler (getBotUseInfo_args_botMid args)
        let res = default_GetBotUseInfo_result{getBotUseInfo_result_success = val}
        T.writeMessage oprot ("getBotUseInfo", T.M_REPLY, seqid) $
          write_GetBotUseInfo_result oprot res)
      (\e  -> do
        let res = default_GetBotUseInfo_result{getBotUseInfo_result_e = P.Just e}
        T.writeMessage oprot ("getBotUseInfo", T.M_REPLY, seqid) $
          write_GetBotUseInfo_result oprot res))
    ((\_ -> do
      T.writeMessage oprot ("getBotUseInfo", T.M_EXCEPTION, seqid) $
        T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN "")) :: X.SomeException -> P.IO ()))
process_sendChatCheckedByWatermark (seqid, iprot, oprot, handler) = do
  args <- read_SendChatCheckedByWatermark_args iprot
  (X.catch
    (X.catch
      (do
        Iface.sendChatCheckedByWatermark handler (sendChatCheckedByWatermark_args_seq args) (sendChatCheckedByWatermark_args_mid args) (sendChatCheckedByWatermark_args_watermark args) (sendChatCheckedByWatermark_args_sessionId args)
        let res = default_SendChatCheckedByWatermark_result
        T.writeMessage oprot ("sendChatCheckedByWatermark", T.M_REPLY, seqid) $
          write_SendChatCheckedByWatermark_result oprot res)
      (\e  -> do
        let res = default_SendChatCheckedByWatermark_result{sendChatCheckedByWatermark_result_e = P.Just e}
        T.writeMessage oprot ("sendChatCheckedByWatermark", T.M_REPLY, seqid) $
          write_SendChatCheckedByWatermark_result oprot res))
    ((\_ -> do
      T.writeMessage oprot ("sendChatCheckedByWatermark", T.M_EXCEPTION, seqid) $
        T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN "")) :: X.SomeException -> P.IO ()))
proc_ handler (iprot,oprot) (name,typ,seqid) = case name of
  "notifyLeaveGroup" -> process_notifyLeaveGroup (seqid,iprot,oprot,handler)
  "notifyLeaveRoom" -> process_notifyLeaveRoom (seqid,iprot,oprot,handler)
  "getBotUseInfo" -> process_getBotUseInfo (seqid,iprot,oprot,handler)
  "sendChatCheckedByWatermark" -> process_sendChatCheckedByWatermark (seqid,iprot,oprot,handler)
  _ -> do
    _ <- T.readVal iprot (T.T_STRUCT Map.empty)
    T.writeMessage oprot (name,T.M_EXCEPTION,seqid) $
      T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN_METHOD ("Unknown function " ++ LT.unpack name))
process handler (iprot, oprot) = do
  T.readMessage iprot (
    proc_ handler (iprot,oprot))
  P.return P.True
