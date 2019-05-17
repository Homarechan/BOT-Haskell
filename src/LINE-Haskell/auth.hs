import Data.Text.Lazy as TL

import LineApi.Line_Types (IdentityProvider, LoginResultType, LoginRequest, LoginType)
import LineApi.TalkService

issueLoginQrCode = do
    let args = GetAuthQrCode_args {
        getAuthQrcode_args_keepLoggedIn = True,
        getAuthQrcode_args_systemName   = "Haskell_proto" :: ByteString
    }
    let values = from_GetAuthQrCode_args args
