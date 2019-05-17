module Main where

import Lib
import Data.IORef
import Data.ByteString.Lazy as LBS
import qualified Data.Map as Map

import Thrift.Transport.HttpClient hiding (writeBuffer, readBuffer)
import Thrift.Transport.Header
import Thrift.Transport.Empty as TE
import Thrift.Protocol.Compact
import Thrift.Transport.Empty as E
import Network.URI as NU
import LineApi.Line_Types as LT

import Data.Maybe
import Data.Map
import Data.IORef
import Data.ByteString.Lazy as LBS

authQueryPath :: String
authQueryPath = "/api/v4/TalkService.do"

httpQueryPath :: String
httpQueryPath = "/S4"

waitForMobilePath :: String
waitForMobilePath = "/Q"

host :: String
host = "gd2.line.naver.jp"

port :: Int
port = 443

ua :: String
ua = "Line/7.4.7"

la :: String
la = "IOSIPAD\t7.4.7\tHaskell-Proto\t0.1.0.0"

token :: String
token = "input your token here"

header = Map.fromList [("X-Line-Applicaition", la), ("X-Line-Access", token), ("User-Agent", ua)]

openTransport :: (Transport i, Transport o) => i -> o -> IO (HeaderTransport i o)
openTransport i o = do
  pid <- newIORef TCompact
  rBuf <- newIORef LBS.empty
  wBuf <- newIORef mempty
  cType <- newIORef HeaderClient
  h <- newIORef []
  trans <- newIORef []
  return HeaderTransport { readBuffer = rBuf
                         , writeBuffer = wBuf
                         , inTrans = i
                         , outTrans = o
                         , clientType = cType
                         , protocolType = pid
                         , headers = h
                         , writeHeaders = header
                         , transforms = trans
                         , writeTransforms = []
                         }

main :: IO ()
main = do
  let uri = fromJust . NU.parseURI $ "http://" ++ host ++ authQueryPath
  print uri
  print header
  trans1 <- openHttpClient uri
  print "trans1"
  let trans2 =  E.EmptyTransport
  res <- openTransport trans1 trans2
  readRes <- tRead res 10
  print readRes

